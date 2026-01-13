
--- Install / Setup ---: 
	1. Install "Lushay" Extension in VSCode
	2. Install OSS-Cad-Suite 
		a) Download (https://github.com/YosysHQ/oss-cad-suite-build/releases/, Choose Windows!)
		b) Extract somewhere (e.g.: "C:\_dev\oss-cad-suite")
		c) In VSCode, go to the Main Settings (Strg + Shift + P)
		d) Search for "Preferences: Open Settings (UI)"
		e) Navigate to "Extensions -> Lushay Code"
		f) Go to "Lushay.Oss Cad Suite: Path"
		g) Paste that Path, but append "\bin" (e.g: "c:\_dev\oss-cad-suite\bin")
	3. Install Driver for TangNano9K
		a) Plug in your TangNano9K
		b) Start "Zadig-2.9.exe" (https://zadig.akeo.ie/)
		c) Go to "Options -> List all Devices"
		d) In the dropdown Menu, choose "JTAG Debugger (Interface 0)" or sometimes "Sipeed-Debug (Interface 0)".
		e) Make sure to use Interface 0 NOT Interface 1!
		f) Make sure the Field right of the green arrow says WinUSB.
		g) Click "Replace Driver"
	4. Make a "lushay.json" (Already exists here), and configure it (I used an LLM)


--- Build ---:
	1. In VSCode, at the bottom right corner, click "FPGA Toolchain"
	2. Choose "Build"
	
	
--- Programm ---:
	1. In VSCode, at the bottom right corner, click "FPGA Toolchain"
	2. Choose "Programm"
	
	
--- Other ---:
	"T80_Explained" ist just "src/T80" folder, but with Code-explanations from Gemini, can be ignored