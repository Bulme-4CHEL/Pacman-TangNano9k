-- ==============================================================================
-- T80 ALU (Arithmetic Logic Unit)
-- ==============================================================================
-- This file defines the "brain" of the CPU that does the math and logic.
-- It takes operands (BusA, BusB), an operation code (ALU_Op), and produces
-- a result (Q) and new flags (F_Out).
-- ==============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all; -- Standard library for arithmetic operations (unsigned/signed)

entity T80_ALU is
	generic(
		Mode : integer := 0;    -- 0 => Z80, 1 => Fast Z80, 2 => 8080, 3 => GB
		Flag_C : integer := 0;  -- Carry
		Flag_N : integer := 1;  -- Add/Subtract
		Flag_P : integer := 2;  -- Parity/Overflow
		Flag_X : integer := 3;  -- Unused
		Flag_H : integer := 4;  -- Half Carry
		Flag_Y : integer := 5;  -- Unused
		Flag_Z : integer := 6;  -- Zero
		Flag_S : integer := 7   -- Sign
	);
	port(
		Arith16         : in  std_logic;                    -- 1 indicates 16-bit arithmetic
		Z16             : in  std_logic;                    -- Zero flag for 16-bit ops
		ALU_Op          : in  std_logic_vector(3 downto 0); -- Operation Code
		IR              : in  std_logic_vector(5 downto 0); -- Instruction Register bits (used for bit index)
		ISet            : in  std_logic_vector(1 downto 0); -- Instruction Set
		BusA            : in  std_logic_vector(7 downto 0); -- Operand A
		BusB            : in  std_logic_vector(7 downto 0); -- Operand B
		F_In            : in  std_logic_vector(7 downto 0); -- Old Flags
		Q               : out std_logic_vector(7 downto 0); -- Result
		F_Out           : out std_logic_vector(7 downto 0)  -- New Flags
	);
end T80_ALU;

architecture rtl of T80_ALU is

	-- PROCEDURE: AddSub
	-- Procedures are reusable blocks of code (like functions) used inside a process.
	-- This one performs Addition or Subtraction.
	-- It calculates the result and the Carry out.
	procedure AddSub(A        : std_logic_vector;
					 B        : std_logic_vector;
					 Sub      : std_logic;      -- 1 for Subtract, 0 for Add
					 Carry_In : std_logic;      -- Carry Input
			  signal Res      : out std_logic_vector;
			  signal Carry    : out std_logic) is

		-- 'variable' means these update IMMEDIATELY inside the procedure.
		-- (Signals only update at the end of the process).
		variable B_i          : unsigned(A'length - 1 downto 0);
		variable Res_i        : unsigned(A'length + 1 downto 0);
	begin
		if Sub = '1' then
			B_i := not unsigned(B); -- For subtraction, we add the NOT of B (part of 2's complement)
		else
			B_i :=     unsigned(B); -- For addition, we just use B
		end if;

		-- Perform the math: A + B + Carry_In
		-- If Sub is 1, this effectively becomes A - B - 1 + Carry_In (conceptually similar)
		Res_i := unsigned("0" & A & Carry_In) + unsigned("0" & B_i & "1");
		
		-- Extract the Carry out bit (the highest bit of the result)
		Carry <= Res_i(A'length + 1);
		-- Extract the actual result bits
		Res <= std_logic_vector(Res_i(A'length downto 1));
	end;

	-- SIGNALS
	-- Internal wires used to connect logic blocks within the architecture.
	signal UseCarry                : std_logic;
	signal Carry7_v                : std_logic; -- Carry from bit 6 to 7
	signal Overflow_v              : std_logic; -- Overflow flag
	signal HalfCarry_v             : std_logic; -- Half Carry (from bit 3 to 4)
	signal Carry_v                 : std_logic; -- Final Carry Out
	signal Q_v                     : std_logic_vector(7 downto 0); -- Internal result
	signal BitMask                 : std_logic_vector(7 downto 0); -- Mask for bit operations

begin

	-- BIT MASK GENERATION
	-- Creates a 'one-hot' byte based on the 3 bits from Instruction Register (IR).
	-- Used for BIT, SET, RES instructions to target a specific bit (0-7).
	with IR(5 downto 3) select BitMask <= "00000001" when "000",
										  "00000010" when "001",
										  "00000100" when "010",
										  "00001000" when "011",
										  "00010000" when "100",
										  "00100000" when "101",
										  "01000000" when "110",
										  "10000000" when others;

	-- ARITHMETIC LOGIC
	-- Determine if we should use the existing Carry flag (for ADC/SBC instructions).
	UseCarry <= not ALU_Op(2) and ALU_Op(0);
	
	-- Perform the addition/subtraction in two parts to capture the Half-Carry (bit 3->4 carry).
	-- Low nibble (bits 3:0)
	AddSub(BusA(3 downto 0), BusB(3 downto 0), ALU_Op(1), ALU_Op(1) xor (UseCarry and F_In(Flag_C)), Q_v(3 downto 0), HalfCarry_v);
	
	-- High nibble (bits 6:4) - wait, this looks like it splits bit 7 separate to get Overflow?
	AddSub(BusA(6 downto 4), BusB(6 downto 4), ALU_Op(1), HalfCarry_v, Q_v(6 downto 4), Carry7_v);
	
	-- Top bit (bit 7)
	AddSub(BusA(7 downto 7), BusB(7 downto 7), ALU_Op(1), Carry7_v, Q_v(7 downto 7), Carry_v);

	-- OVERFLOW CALCULATION
	-- Process to calculate the Parity/Overflow flag correctly.
	-- Z80 uses one flag for both Parity (logical ops) and Overflow (arithmetic ops).
	process (Carry_v, Carry7_v, Q_v)
	begin
		if(Mode=2) then -- 8080 Mode
			-- 8080 only implements Parity
			OverFlow_v <= not (Q_v(0) xor Q_v(1) xor Q_v(2) xor Q_v(3) xor
					   Q_v(4) xor Q_v(5) xor Q_v(6) xor Q_v(7));  
		else
			-- Z80 Mode: For arithmetic, Overflow is (Carry_Out XOR Carry_In_To_Last_Bit)
			OverFlow_v <= Carry_v xor Carry7_v;
		end if;
	end process;

	-- MAIN ALU PROCESS
	-- This process responds to changes in inputs and computes the final Result (Q) and Flags (F_Out).
	process (Arith16, ALU_OP, F_In, BusA, BusB, IR, Q_v, Carry_v, HalfCarry_v, OverFlow_v, BitMask, ISet, Z16)
		variable Q_t : std_logic_vector(7 downto 0); -- Temporary variable for result
		variable DAA_Q : unsigned(8 downto 0);       -- Temporary for Decimal Adjust
	begin
		Q_t := "--------";
		F_Out <= F_In;   -- Default: flags stay the same
		DAA_Q := "---------";

		-- CASE statement switches based on the ALU Operation code
		case ALU_Op is
		
		-- ARITHMETIC AND LOGIC OPERATIONS (ADD, SUB, AND, OR, XOR, CP)
		when "0000" | "0001" |  "0010" | "0011" | "0100" | "0101" | "0110" | "0111" =>
			F_Out(Flag_N) <= '0'; -- Clear Subtract flag by default
			F_Out(Flag_C) <= '0'; -- Clear Carry by default
			
			case ALU_OP(2 downto 0) is
			when "000" | "001" => -- ADD, ADC
				Q_t := Q_v;       -- Result from the AddSub unit above
				F_Out(Flag_C) <= Carry_v;
				F_Out(Flag_H) <= HalfCarry_v;
				F_Out(Flag_P) <= OverFlow_v;
			when "010" | "011" | "111" => -- SUB, SBC, CP (Compare)
				Q_t := Q_v;
				F_Out(Flag_N) <= '1'; -- Set Subtract flag
				F_Out(Flag_C) <= not Carry_v; -- In Z80, Carry is inverted for subtract borrow? Or handled by logic?
				F_Out(Flag_H) <= not HalfCarry_v;
				F_Out(Flag_P) <= OverFlow_v;
			when "100" => -- AND
				Q_t(7 downto 0) := BusA and BusB;
				F_Out(Flag_H) <= '1';
			when "101" => -- XOR
				Q_t(7 downto 0) := BusA xor BusB;
				F_Out(Flag_H) <= '0';
			when others => -- OR ("110")
				Q_t(7 downto 0) := BusA or BusB;
				F_Out(Flag_H) <= '0';
			end case;

			-- Flags for Compare (CP) instruction - doesn't store result, just sets flags
			if ALU_Op(2 downto 0) = "111" then -- CP
				F_Out(Flag_X) <= BusB(3); -- X/Y flags come from operand
				F_Out(Flag_Y) <= BusB(5);
			else
				F_Out(Flag_X) <= Q_t(3);  -- X/Y flags come from result
				F_Out(Flag_Y) <= Q_t(5);
			end if;

			-- Zero Flag Calculation
			if Q_t(7 downto 0) = "00000000" then
				F_Out(Flag_Z) <= '1';
				if Z16 = '1' then -- Special handling for 16-bit operations (combining zero flags)
					F_Out(Flag_Z) <= F_In(Flag_Z);      
				end if;
			else
				F_Out(Flag_Z) <= '0';
			end if;
			
			F_Out(Flag_S) <= Q_t(7); -- Sign flag = Most Significant Bit

			-- Parity calculation for Logic operations (AND, OR, XOR)
			case ALU_Op(2 downto 0) is
			when "000" | "001" | "010" | "011" | "111" => -- Arithmetic ops use Overflow (calculated earlier)
			when others => -- Logic ops use Parity
				F_Out(Flag_P) <= not (Q_t(0) xor Q_t(1) xor Q_t(2) xor Q_t(3) xor
					Q_t(4) xor Q_t(5) xor Q_t(6) xor Q_t(7));
			end case;

			-- 16-bit Arithmetic flag preservation
			if Arith16 = '1' then
				F_Out(Flag_S) <= F_In(Flag_S);
				F_Out(Flag_Z) <= F_In(Flag_Z);
				F_Out(Flag_P) <= F_In(Flag_P);
			end if;

		-- DECIMAL ADJUST ACCUMULATOR (DAA)
		-- Complex BCD (Binary Coded Decimal) correction logic.
		when "1100" =>
			F_Out(Flag_H) <= F_In(Flag_H);
			F_Out(Flag_C) <= F_In(Flag_C);
			DAA_Q(7 downto 0) := unsigned(BusA);
			DAA_Q(8) := '0';
			
			if F_In(Flag_N) = '0' then -- After Addition
				-- If low digit > 9 or Half Carry, add 6
				if DAA_Q(3 downto 0) > 9 or F_In(Flag_H) = '1' then
					if (DAA_Q(3 downto 0) > 9) then
						F_Out(Flag_H) <= '1';
					else
						F_Out(Flag_H) <= '0';
					end if;
					DAA_Q := DAA_Q + 6;
				end if;
				-- If high digit > 9 or Carry, add 0x60
				if DAA_Q(8 downto 4) > 9 or F_In(Flag_C) = '1' then
					DAA_Q := DAA_Q + 96; -- 0x60
				end if;
			else -- After Subtraction
				if DAA_Q(3 downto 0) > 9 or F_In(Flag_H) = '1' then
					if DAA_Q(3 downto 0) > 5 then
						F_Out(Flag_H) <= '0';
					end if;
					DAA_Q(7 downto 0) := DAA_Q(7 downto 0) - 6;
				end if;
				if unsigned(BusA) > 153 or F_In(Flag_C) = '1' then
					DAA_Q := DAA_Q - 352; -- 0x160
				end if;
			end if;
			
			-- Update Flags after DAA
			F_Out(Flag_X) <= DAA_Q(3);
			F_Out(Flag_Y) <= DAA_Q(5);
			F_Out(Flag_C) <= F_In(Flag_C) or DAA_Q(8);
			Q_t := std_logic_vector(DAA_Q(7 downto 0));
			if DAA_Q(7 downto 0) = "00000000" then
				F_Out(Flag_Z) <= '1';
			else
				F_Out(Flag_Z) <= '0';
			end if;
			F_Out(Flag_S) <= DAA_Q(7);
			F_Out(Flag_P) <= not (DAA_Q(0) xor DAA_Q(1) xor DAA_Q(2) xor DAA_Q(3) xor
				DAA_Q(4) xor DAA_Q(5) xor DAA_Q(6) xor DAA_Q(7));

		-- ROTATE LEFT/RIGHT DECIMAL (RLD, RRD)
		when "1101" | "1110" =>
			Q_t(7 downto 4) := BusA(7 downto 4);
			if ALU_Op(0) = '1' then -- RLD vs RRD logic
				Q_t(3 downto 0) := BusB(7 downto 4);
			else
				Q_t(3 downto 0) := BusB(3 downto 0);
			end if;
			-- Update flags
			F_Out(Flag_H) <= '0';
			F_Out(Flag_N) <= '0';
			F_Out(Flag_X) <= Q_t(3);
			F_Out(Flag_Y) <= Q_t(5);
			if Q_t(7 downto 0) = "00000000" then
				F_Out(Flag_Z) <= '1';
			else
				F_Out(Flag_Z) <= '0';
			end if;
			F_Out(Flag_S) <= Q_t(7);
			F_Out(Flag_P) <= not (Q_t(0) xor Q_t(1) xor Q_t(2) xor Q_t(3) xor
				Q_t(4) xor Q_t(5) xor Q_t(6) xor Q_t(7));

		-- BIT MANIPULATION (BIT, SET, RES)
		when "1001" => -- BIT (Test bit)
			Q_t(7 downto 0) := BusB and BitMask; -- Mask the bit
			F_Out(Flag_S) <= Q_t(7); -- Sign flag? Undocumented behavior mostly
			if Q_t(7 downto 0) = "00000000" then -- If result is 0, the bit was 0 -> Set Zero Flag
				F_Out(Flag_Z) <= '1';
				F_Out(Flag_P) <= '1';
			else
				F_Out(Flag_Z) <= '0';
				F_Out(Flag_P) <= '0';
			end if;
			F_Out(Flag_H) <= '1';
			F_Out(Flag_N) <= '0';
			F_Out(Flag_X) <= '0';
			F_Out(Flag_Y) <= '0';
			if IR(2 downto 0) /= "110" then -- Special flags behavior if not (HL)
				F_Out(Flag_X) <= BusB(3);
				F_Out(Flag_Y) <= BusB(5);
			end if;
		
		when "1010" => -- SET (Set bit to 1)
			Q_t(7 downto 0) := BusB or BitMask;
		when "1011" => -- RES (Reset bit to 0)
			Q_t(7 downto 0) := BusB and not BitMask;

		-- ROTATE AND SHIFT GROUP
		when "1000" =>
			case IR(5 downto 3) is
			when "000" => -- RLC (Rotate Left Circular)
				Q_t(7 downto 1) := BusA(6 downto 0);
				Q_t(0) := BusA(7);
				F_Out(Flag_C) <= BusA(7);
			when "010" => -- RL (Rotate Left through Carry)
				Q_t(7 downto 1) := BusA(6 downto 0);
				Q_t(0) := F_In(Flag_C); -- Old Carry goes to bit 0
				F_Out(Flag_C) <= BusA(7);
			when "001" => -- RRC (Rotate Right Circular)
				Q_t(6 downto 0) := BusA(7 downto 1);
				Q_t(7) := BusA(0);
				F_Out(Flag_C) <= BusA(0);
			when "011" => -- RR (Rotate Right through Carry)
				Q_t(6 downto 0) := BusA(7 downto 1);
				Q_t(7) := F_In(Flag_C);
				F_Out(Flag_C) <= BusA(0);
			when "100" => -- SLA (Shift Left Arithmetic)
				Q_t(7 downto 1) := BusA(6 downto 0);
				Q_t(0) := '0';
				F_Out(Flag_C) <= BusA(7);
			when "110" => -- SLL (Undocumented, Shift Left Logical - fills with 1) or SWAP (Gameboy)
				if Mode = 3 then -- Gameboy SWAP instruction
					Q_t(7 downto 4) := BusA(3 downto 0);
					Q_t(3 downto 0) := BusA(7 downto 4);
					F_Out(Flag_C) <= '0';
				else -- Z80 SLL
					Q_t(7 downto 1) := BusA(6 downto 0);
					Q_t(0) := '1'; -- Fills with 1
					F_Out(Flag_C) <= BusA(7);
				end if;
			when "101" => -- SRA (Shift Right Arithmetic - preserves sign bit)
				Q_t(6 downto 0) := BusA(7 downto 1);
				Q_t(7) := BusA(7); -- Copy bit 7
				F_Out(Flag_C) <= BusA(0);
			when others => -- SRL (Shift Right Logical - fills with 0)
				Q_t(6 downto 0) := BusA(7 downto 1);
				Q_t(7) := '0';
				F_Out(Flag_C) <= BusA(0);
			end case;
			
			-- Shift flags
			F_Out(Flag_H) <= '0';
			F_Out(Flag_N) <= '0';
			F_Out(Flag_X) <= Q_t(3);
			F_Out(Flag_Y) <= Q_t(5);
			F_Out(Flag_S) <= Q_t(7);
			if Q_t(7 downto 0) = "00000000" then
				F_Out(Flag_Z) <= '1';
			else
				F_Out(Flag_Z) <= '0';
			end if;
			F_Out(Flag_P) <= not (Q_t(0) xor Q_t(1) xor Q_t(2) xor Q_t(3) xor
				Q_t(4) xor Q_t(5) xor Q_t(6) xor Q_t(7));
			
			-- Special handling for I/O instructions (ISet "00")?
			if ISet = "00" then
				F_Out(Flag_P) <= F_In(Flag_P);
				F_Out(Flag_S) <= F_In(Flag_S);
				F_Out(Flag_Z) <= F_In(Flag_Z);
			end if;
		
		when others =>
			null;
		end case;

		-- Assign calculated Result to Output
		Q <= Q_t;
		
	end process;
end;
