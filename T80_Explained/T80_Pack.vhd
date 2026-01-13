-- ==============================================================================
-- T80(b) Core Package File
-- ==============================================================================
-- This file is a VHDL PACKAGE. Think of a package like a header file in C/C++.
-- It contains declarations of components (modules) that can be used in other
-- parts of the design, ensuring everyone agrees on the inputs and outputs.
-- ==============================================================================

-- LIBRARY DECLARATION
-- VHDL uses libraries to organize code. 'IEEE' is the standard library.
library IEEE;

-- USE CLAUSE
-- This brings specific parts of the library into the current scope.
-- 'std_logic_1164' defines the standard electrical signal types:
--   - std_logic: A single wire that can be '0' (low), '1' (high), 'Z' (high impedance), etc.
--   - std_logic_vector: A collection of wires (a bus), e.g., an 8-bit data bus.
use IEEE.std_logic_1164.all;

-- PACKAGE DECLARATION
-- Defines the name of the package 'T80_Pack'.
package T80_Pack is

	-- COMPONENT DECLARATION: T80
	-- This declares the interface for the main processor core 'T80'.
	-- When you want to use the T80 in another file, you use this template.
	component T80
	generic(
		-- GENERICS are like compile-time constants or parameters (similar to templates in C++).
		-- They allow you to configure the hardware before it is built.
		Mode : integer := 0;    -- 0 => Z80 (Normal), 1 => Fast Z80, 2 => 8080 mode, 3 => GameBoy mode
		IOWait : integer := 0;  -- 1 => Single cycle I/O, 0 => Standard I/O cycle
		-- These are indexes for the Flag register bits (Carry, Zero, Sign, etc.)
		Flag_C : integer := 0;  -- Carry Flag Bit Index
		Flag_N : integer := 1;  -- Add/Subtract Flag Bit Index
		Flag_P : integer := 2;  -- Parity/Overflow Flag Bit Index
		Flag_X : integer := 3;  -- Undoc Flag Bit Index
		Flag_H : integer := 4;  -- Half Carry Flag Bit Index
		Flag_Y : integer := 5;  -- Undoc Flag Bit Index
		Flag_Z : integer := 6;  -- Zero Flag Bit Index
		Flag_S : integer := 7   -- Sign Flag Bit Index
	);
	port(
		-- PORTS define the physical pins of the chip/module.
		-- 'in' means signal comes INTO the module.
		-- 'out' means signal goes OUT of the module.
		
		RESET_n         : in std_logic;  -- System Reset (Active Low, hence '_n')
		CLK_n           : in std_logic;  -- System Clock (Active Low edge typically)
		CEN             : in std_logic;  -- Clock Enable (allows pausing the CPU)
		WAIT_n          : in std_logic;  -- Wait request (pauses CPU for slow memory)
		INT_n           : in std_logic;  -- Maskable Interrupt Request
		NMI_n           : in std_logic;  -- Non-Maskable Interrupt Request
		BUSRQ_n         : in std_logic;  -- Bus Request (DMA wants control of bus)
		
		M1_n            : out std_logic; -- Machine Cycle 1 (Opcode fetch)
		IORQ            : out std_logic; -- I/O Request (Accessing I/O ports)
		NoRead          : out std_logic; -- Internal signal?
		Write           : out std_logic; -- Write Enable (1 = Writing, 0 = Reading)
		RFSH_n          : out std_logic; -- Refresh (for Dynamic RAM)
		HALT_n          : out std_logic; -- CPU Halted state
		BUSAK_n         : out std_logic; -- Bus Acknowledge (Telling DMA it has the bus)
		
		-- std_logic_vector(15 downto 0) means a 16-bit bus, bits numbered 15 down to 0.
		A               : out std_logic_vector(15 downto 0); -- Address Bus (16-bit, 64KB addressable)
		DInst           : in std_logic_vector(7 downto 0);   -- Instruction Data In (from memory)
		DI              : in std_logic_vector(7 downto 0);   -- Data Input (Read Data)
		DO              : out std_logic_vector(7 downto 0);  -- Data Output (Write Data)
		
		MC              : out std_logic_vector(2 downto 0);  -- Machine Cycle Status
		TS              : out std_logic_vector(2 downto 0);  -- T-State (Sub-cycle timing)
		IntCycle_n      : out std_logic; -- Interrupt Cycle Active
		IntE            : out std_logic; -- Interrupt Enable Status
		Stop            : out std_logic  -- Processor Stopped
	);
	end component;

	-- COMPONENT: T80_Reg
	-- This module handles the CPU registers (A, B, C, D, E, H, L, etc.)
	component T80_Reg
	port(
		Clk             : in std_logic;
		CEN             : in std_logic;
		WEH             : in std_logic; -- Write Enable High byte
		WEL             : in std_logic; -- Write Enable Low byte
		AddrA           : in std_logic_vector(2 downto 0); -- Address for Port A read
		AddrB           : in std_logic_vector(2 downto 0); -- Address for Port B read
		AddrC           : in std_logic_vector(2 downto 0); -- Address for Write port
		DIH             : in std_logic_vector(7 downto 0); -- Data Input High
		DIL             : in std_logic_vector(7 downto 0); -- Data Input Low
		DOAH            : out std_logic_vector(7 downto 0); -- Data Output A High
		DOAL            : out std_logic_vector(7 downto 0); -- Data Output A Low
		DOBH            : out std_logic_vector(7 downto 0); -- Data Output B High
		DOBL            : out std_logic_vector(7 downto 0); -- Data Output B Low
		DOCH            : out std_logic_vector(7 downto 0); -- Data Output C High (Monitoring?)
		DOCL            : out std_logic_vector(7 downto 0)  -- Data Output C Low
	);
	end component;

	-- COMPONENT: T80_MCode
	-- Microcode Decoder. Turns opcodes into control signals.
	component T80_MCode
	generic(
		Mode   : integer := 0;
		Flag_C : integer := 0;
		Flag_N : integer := 1;
		Flag_P : integer := 2;
		Flag_X : integer := 3;
		Flag_H : integer := 4;
		Flag_Y : integer := 5;
		Flag_Z : integer := 6;
		Flag_S : integer := 7
	);
	port(
		-- Inputs from Instruction Register (IR) and State
		IR              : in  std_logic_vector(7 downto 0); -- Instruction Register (Opcode)
		ISet            : in  std_logic_vector(1 downto 0); -- Instruction Set State (Normal, CB, ED, DD/FD prefix)
		MCycle          : in  std_logic_vector(2 downto 0); -- Current Machine Cycle
		F               : in  std_logic_vector(7 downto 0); -- Current Flags
		NMICycle        : in  std_logic;
		IntCycle        : in  std_logic;

		-- Outputs: Control Signals telling the rest of the CPU what to do
		MCycles         : out std_logic_vector(2 downto 0); -- Total cycles for this instruction
		TStates         : out std_logic_vector(2 downto 0); -- Total T-states for this operation
		Prefix          : out std_logic_vector(1 downto 0); -- Opcode Prefix type found
		Inc_PC          : out std_logic; -- Increment Program Counter
		Inc_WZ          : out std_logic; -- Increment WZ register (internal pointer)
		IncDec_16       : out std_logic_vector(3 downto 0); -- Control for 16-bit Inc/Dec unit
		Read_To_Reg     : out std_logic; -- Reading memory to a register?
		Read_To_Acc     : out std_logic; -- Reading directly to Accumulator?
		Set_BusA_To     : out std_logic_vector(3 downto 0); -- Multiplexer select for ALU Input A
		Set_BusB_To     : out std_logic_vector(3 downto 0); -- Multiplexer select for ALU Input B
		ALU_Op          : out std_logic_vector(3 downto 0); -- ALU Operation Command (ADD, SUB, XOR...)
		Save_ALU        : out std_logic; -- Write ALU result back to register?
		PreserveC       : out std_logic; -- Don't change Carry flag?
		Arith16         : out std_logic; -- 16-bit Arithmetic operation?
		Set_Addr_To     : out std_logic_vector(2 downto 0); -- Address Bus Mux Select
		IORQ            : out std_logic; -- Trigger I/O Request
		Jump            : out std_logic; -- Jump operation
		JumpE           : out std_logic; -- Extended Jump
		JumpXY          : out std_logic; -- Index Jump
		Call            : out std_logic; -- Subroutine Call
		RstP            : out std_logic; -- Reset/Restart instruction
		LDZ             : out std_logic; -- Load Z register
		LDW             : out std_logic; -- Load W register
		LDSPHL          : out std_logic; -- Load SP from HL
		Special_LD      : out std_logic_vector(2 downto 0); -- Special Loads (I/R regs)
		ExchangeDH      : out std_logic; -- EX DE,HL
		ExchangeRp      : out std_logic; -- EX (SP), HL etc
		ExchangeAF      : out std_logic; -- EX AF, AF'
		ExchangeRS      : out std_logic; -- EXX
		I_DJNZ          : out std_logic; -- Decrement Jump Non Zero
		I_CPL           : out std_logic; -- Complement Accumulator
		I_CCF           : out std_logic; -- Complement Carry Flag
		I_SCF           : out std_logic; -- Set Carry Flag
		I_RETN          : out std_logic; -- Return from NMI
		I_BT            : out std_logic; -- Bit Test (internal?)
		I_BC            : out std_logic;
		I_BTR           : out std_logic;
		I_RLD           : out std_logic; -- Rotate Left Decimal
		I_RRD           : out std_logic; -- Rotate Right Decimal
		I_INRC          : out std_logic; -- Increment Register C (for block IO?)
		SetDI           : out std_logic; -- Disable Interrupts (DI)
		SetEI           : out std_logic; -- Enable Interrupts (EI)
		IMode           : out std_logic_vector(1 downto 0); -- Interrupt Mode (0, 1, 2)
		Halt            : out std_logic; -- Halt Instruction
		NoRead          : out std_logic;
		Write           : out std_logic
	);
	end component;

	-- COMPONENT: T80_ALU
	-- The Arithmetic Logic Unit. Performs the math and logic.
	component T80_ALU
	generic(
		Mode   : integer := 0;
		Flag_C : integer := 0;
		Flag_N : integer := 1;
		Flag_P : integer := 2;
		Flag_X : integer := 3;
		Flag_H : integer := 4;
		Flag_Y : integer := 5;
		Flag_Z : integer := 6;
		Flag_S : integer := 7
	);
	port(
		Arith16         : in  std_logic; -- 16-bit operation mode
		Z16             : in  std_logic; -- Zero flag from 16-bit op?
		ALU_Op          : in  std_logic_vector(3 downto 0); -- Operation Code (ADD, SUB...)
		IR              : in  std_logic_vector(5 downto 0); -- Instruction bits (for bit ops)
		ISet            : in  std_logic_vector(1 downto 0); -- Instruction Set
		BusA            : in  std_logic_vector(7 downto 0); -- Input Operand A
		BusB            : in  std_logic_vector(7 downto 0); -- Input Operand B
		F_In            : in  std_logic_vector(7 downto 0); -- Current Flags Input
		Q               : out std_logic_vector(7 downto 0); -- Result Output
		F_Out           : out std_logic_vector(7 downto 0)  -- New Flags Output
	);
	end component;

end;
