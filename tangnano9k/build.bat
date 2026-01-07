@echo off
REM Add GHDL to path temporarily
set PATH=C:\_dev\ghdl\bin;%PATH%

set DEVICE=GW1NR-LV9QN88PC6/I5
set FAMILY=GW1N-9C
set CST=src/pacman.cst

echo [1/4] Transpiling VHDL to Verilog (GHDL)...
if exist work-obj93.cf del work-obj93.cf

REM NOTE: Removed src/T80/T80_RegX.vhd to avoid Xilinx primitives!
REM GHDL will now use the generic architecture in T80_Reg.vhd
ghdl -a --std=93c src/T80/T80_Pack.vhd src/T80/T80_MCode.vhd src/T80/T80_ALU.vhd src/T80/T80_Reg.vhd src/T80/T80.vhd src/T80/T80sed.vhd
if %errorlevel% neq 0 ( echo [ERROR] GHDL Analyze Failed & exit /b %errorlevel% )

ghdl --synth --std=93c --out=verilog t80sed > src/T80/t80_combined.v
if %errorlevel% neq 0 ( echo [ERROR] GHDL Synth Failed & exit /b %errorlevel% )

echo [1.5/4] Transpiling SystemVerilog to Verilog (sv2v)...
REM Explicitly listing files because Windows CMD does not expand wildcards
sv2v -I src/hdmi src/hdmi/audio_clock_regeneration_packet.sv src/hdmi/audio_info_frame.sv src/hdmi/audio_sample_packet.sv src/hdmi/auxiliary_video_information_info_frame.sv src/hdmi/hdmi.sv src/hdmi/packet_assembler.sv src/hdmi/packet_picker.sv src/hdmi/serializer.sv src/hdmi/source_product_description_info_frame.sv src/hdmi/tmds_channel.sv src/top.sv > src/sv_combined.v
if %errorlevel% neq 0 ( echo [ERROR] sv2v Failed & exit /b %errorlevel% )

echo [2/4] Synthesizing (Yosys)...
yosys -s pacman.ys
if %errorlevel% neq 0 exit /b %errorlevel%

echo [3/4] Place and Route...
nextpnr-gowin --json pacman.json --write pacman_pnr.json --family %FAMILY% --device %DEVICE% --cst %CST%
if %errorlevel% neq 0 exit /b %errorlevel%

echo [4/4] Packing Bitstream...
gowin_pack -d %FAMILY% -o pacman.fs pacman_pnr.json
if %errorlevel% neq 0 exit /b %errorlevel%

echo [Done] Flashing...
openFPGALoader -b tangnano9k pacman.fs