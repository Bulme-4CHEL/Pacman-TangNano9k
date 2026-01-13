-- ==============================================================================
-- T80sed (Synchronous with Clock Enable - Bus Wrapper)
-- ==============================================================================
-- This is a wrapper around the T80 Core Entity.
-- Its purpose is to translate the internal T80 signals (NoRead, Write, IORQ)
-- into standard Z80 Bus Signals (RD_n, WR_n, MREQ_n, IORQ_n).
--
-- It also handles a "2 Clock Memory Access" scheme, likely for compatibility
-- with specific memory timing requirements (e.g., Pacman hardware).
-- ==============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.T80_Pack.all;

entity T80sed is
	port(
		RESET_n         : in  std_logic;
		CLK_n           : in  std_logic;
		CLKEN           : in  std_logic; -- Clock Enable
		WAIT_n          : in  std_logic;
		INT_n           : in  std_logic;
		NMI_n           : in  std_logic;
		BUSRQ_n         : in  std_logic;
		M1_n            : out std_logic;
		MREQ_n          : out std_logic; -- Memory Request (Active Low)
		IORQ_n          : out std_logic; -- I/O Request (Active Low)
		RD_n            : out std_logic; -- Read Strobe (Active Low)
		WR_n            : out std_logic; -- Write Strobe (Active Low)
		RFSH_n          : out std_logic;
		HALT_n          : out std_logic;
		BUSAK_n         : out std_logic;
		A               : out std_logic_vector(15 downto 0);
		DI              : in  std_logic_vector(7 downto 0);
		DO              : out std_logic_vector(7 downto 0)
	);
end T80sed;

architecture rtl of T80sed is

	signal IntCycle_n   : std_logic;
	signal NoRead       : std_logic;
	signal Write        : std_logic;
	signal IORQ         : std_logic;
	signal DI_Reg       : std_logic_vector(7 downto 0);
	signal MCycle       : std_logic_vector(2 downto 0);
	signal TState       : std_logic_vector(2 downto 0);

begin

	-- Instantiate Core
	u0 : T80
		generic map(
			Mode      => 0, -- Z80 Mode
			IOWait    => 1)
		port map(
			CEN        => CLKEN,
			M1_n       => M1_n,
			IORQ       => IORQ,
			NoRead     => NoRead,
			Write      => Write,
			RFSH_n     => RFSH_n,
			HALT_n     => HALT_n,
			WAIT_n     => Wait_n,
			INT_n      => INT_n,
			NMI_n      => NMI_n,
			RESET_n    => RESET_n,
			BUSRQ_n    => BUSRQ_n,
			BUSAK_n    => BUSAK_n,
			CLK_n      => CLK_n,
			A          => A,
			DInst      => DI,
			DI         => DI_Reg,
			DO         => DO,
			MC         => MCycle,
			TS         => TState,
			IntCycle_n => IntCycle_n);

	-- BUS CONTROL LOGIC
	-- Generates standard Z80 strobes (RD, WR, MREQ, IORQ) from internal state.
	process (RESET_n, CLK_n)
	begin
		if RESET_n = '0' then
			RD_n <= '1';
			WR_n <= '1';
			IORQ_n <= '1';
			MREQ_n <= '1';
			DI_Reg <= "00000000";
		elsif CLK_n'event and CLK_n = '1' then
			if CLKEN = '1' then
				-- Default: Inactive (High)
				RD_n <= '1';
				WR_n <= '1';
				IORQ_n <= '1';
				MREQ_n <= '1';
				
				if MCycle = "001" then
					-- M1 Cycle (Opcode Fetch)
					if TState = "001" or (TState = "010" and Wait_n = '0') then
						RD_n <= not IntCycle_n;   -- Activate Read during Interact Cycle?
						MREQ_n <= not IntCycle_n; -- MREQ for Memory access
						IORQ_n <= IntCycle_n;     -- IORQ for Interrupt Ack
					end if;
					if TState = "011" then
						MREQ_n <= '0'; -- Refresh Cycle?
					end if;
				else
					-- M2, M3... (Memory or I/O Read/Write)
					if (TState = "001" or TState = "010") and NoRead = '0' and Write = '0' then
						-- READ CYCLE
						RD_n <= '0';
						IORQ_n <= not IORQ; -- IORQ if IORQ signal is high
						MREQ_n <= IORQ;     -- MREQ if IORQ signal is low
					end if;
					if ((TState = "001") or (TState = "010")) and Write = '1' then
						-- WRITE CYCLE
						WR_n <= '0';
						IORQ_n <= not IORQ;
						MREQ_n <= IORQ;
					end if;
				end if;
				
				-- Latch Data Input (DI) at appropriate time
				if TState = "010" and Wait_n = '1' then
					DI_Reg <= DI;
				end if;
			end if;
		end if;
	end process;

end;
