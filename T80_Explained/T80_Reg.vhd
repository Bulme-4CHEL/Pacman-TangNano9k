-- ==============================================================================
-- T80 Registers Module
-- ==============================================================================
-- This module implements the general-purpose registers of the Z80 CPU.
-- It works like a small, very fast RAM (Random Access Memory) inside the CPU.
-- It stores temporary data like variables in a program.
-- ==============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity T80_Reg is
	port(
		Clk             : in std_logic; -- System Clock
		CEN             : in std_logic; -- Clock Enable (updates only happen when this is 1)
		WEH             : in std_logic; -- Write Enable High Byte
		WEL             : in std_logic; -- Write Enable Low Byte
		
		-- Address Lines (Select which register to access)
		AddrA           : in std_logic_vector(2 downto 0); -- Read Port A / Write Port
		AddrB           : in std_logic_vector(2 downto 0); -- Read Port B
		AddrC           : in std_logic_vector(2 downto 0); -- Read Port C
		
		-- Data Inputs (Data to write)
		DIH             : in std_logic_vector(7 downto 0); -- Data Input High Byte
		DIL             : in std_logic_vector(7 downto 0); -- Data Input Low Byte
		
		-- Data Outputs (Data being read)
		DOAH            : out std_logic_vector(7 downto 0); -- Output Port A High
		DOAL            : out std_logic_vector(7 downto 0); -- Output Port A Low
		DOBH            : out std_logic_vector(7 downto 0); -- Output Port B High
		DOBL            : out std_logic_vector(7 downto 0); -- Output Port B Low
		DOCH            : out std_logic_vector(7 downto 0); -- Output Port C High
		DOCL            : out std_logic_vector(7 downto 0)  -- Output Port C Low
	);
end T80_Reg;

architecture rtl of T80_Reg is
	
	-- TYPE DEFINITION:
	-- Creates a custom array type of 8-bit vectors.
	type Register_Image is array (natural range <>) of std_logic_vector(7 downto 0);
	
	-- SIGNAL DECLARATION:
	-- 'RegsH' and 'RegsL' are the actual storage elements.
	-- We split them into High and Low banks often used for 16-bit register pairs.
	-- e.g., BC register is RegsH(0) and RegsL(0).
	-- Indices map to:
	-- 0: B, C
	-- 1: D, E
	-- 2: H, L
	-- ... etc (depends on mapping in T80.vhd or T80_MCode.vhd)
	signal      RegsH   : Register_Image(0 to 7);
	signal      RegsL   : Register_Image(0 to 7);

begin

	-- WRITE PROCESS
	-- Registers are updated SYNCHRONOUSLY (on the rising edge of the clock).
	process (Clk)
	begin
		if Clk'event and Clk = '1' then -- On rising edge...
			if CEN = '1' then           -- If CPU is enabled...
				
				-- If Write Enable High is active, write Data Input High to address A
				if WEH = '1' then
					RegsH(to_integer(unsigned(AddrA))) <= DIH;
				end if;
				
				-- If Write Enable Low is active, write Data Input Low to address A
				if WEL = '1' then
					RegsL(to_integer(unsigned(AddrA))) <= DIL;
				end if;
				
			end if;
		end if;
	end process;

	-- READ OPERATIONS
	-- Reads are usually ASYNCHRONOUS used here (combinational logic).
	-- As soon as the Address changes, the Data Output changes (after a tiny delay).
	
	-- Port A Read
	DOAH <= RegsH(to_integer(unsigned(AddrA)));
	DOAL <= RegsL(to_integer(unsigned(AddrA)));
	
	-- Port B Read
	DOBH <= RegsH(to_integer(unsigned(AddrB)));
	DOBL <= RegsL(to_integer(unsigned(AddrB)));
	
	-- Port C Read
	DOCH <= RegsH(to_integer(unsigned(AddrC)));
	DOCL <= RegsL(to_integer(unsigned(AddrC)));

end;
