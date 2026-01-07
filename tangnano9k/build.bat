@echo off
set OSS_ROOT=C:\_dev\oss-cad-suite

REM WICHTIG: Die DLLs der Suite (lib) müssen VOR allem anderen stehen!
REM Reihenfolge: 1. Suite Libs, 2. Suite Binaries, 3. Rest vom System, 4. GHDL
set PATH=%OSS_ROOT%\lib;%OSS_ROOT%\bin;%PATH%;C:\_dev\ghdl\bin

set DEVICE=GW1NR-LV9QN88PC6/I5
set FAMILY=GW1N-9C
set CST=src/pacman.cst

echo [1/4] Transpiling VHDL to Verilog (GHDL)...
if exist work-obj93.cf del work-obj93.cf

REM T80 CPU
ghdl -a --std=93c src/T80/T80_Pack.vhd src/T80/T80_MCode.vhd src/T80/T80_ALU.vhd src/T80/T80_Reg.vhd src/T80/T80.vhd src/T80/T80sed.vhd
if %errorlevel% neq 0 ( echo [ERROR] GHDL Analyze Failed & exit /b %errorlevel% )

ghdl --synth --std=93c --out=verilog t80sed > src/T80/t80_combined.v
if %errorlevel% neq 0 ( echo [ERROR] GHDL Synth Failed & exit /b %errorlevel% )

echo [1.5/4] Transpiling SystemVerilog to Verilog (sv2v)...
sv2v -I src/hdmi src/hdmi/audio_clock_regeneration_packet.sv src/hdmi/audio_info_frame.sv src/hdmi/audio_sample_packet.sv src/hdmi/auxiliary_video_information_info_frame.sv src/hdmi/hdmi.sv src/hdmi/packet_assembler.sv src/hdmi/packet_picker.sv src/hdmi/serializer.sv src/hdmi/source_product_description_info_frame.sv src/hdmi/tmds_channel.sv src/top.sv > src/sv_combined.v
if %errorlevel% neq 0 ( echo [ERROR] sv2v Failed & exit /b %errorlevel% )

echo [2/4] Synthesizing (Yosys)...
yosys -s pacman.ys
if %errorlevel% neq 0 exit /b %errorlevel%

echo [3/4] Place and Route (Himbaechel)...
nextpnr-himbaechel --json pacman.json --write pacman_pnr.json --device %DEVICE% --vopt family=%FAMILY% --vopt cst=%CST%
if %errorlevel% neq 0 exit /b %errorlevel%

echo [4/4] Packing Bitstream...
gowin_pack -d %FAMILY% -o pacman.fs pacman_pnr.json
if %errorlevel% neq 0 exit /b %errorlevel%

echo [Done] Flashing...
openFPGALoader -b tangnano9k pacman.fs