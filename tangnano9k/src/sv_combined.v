module audio_clock_regeneration_packet (
	clk_pixel,
	clk_audio,
	clk_audio_counter_wrap,
	header,
	sub
);
	parameter real VIDEO_RATE = 25.2E6;
	parameter signed [31:0] AUDIO_RATE = 48e3;
	input wire clk_pixel;
	input wire clk_audio;
	output reg clk_audio_counter_wrap = 0;
	output wire [23:0] header;
	output wire [223:0] sub;
	function automatic signed [19:0] sv2v_cast_20_signed;
		input reg signed [19:0] inp;
		sv2v_cast_20_signed = inp;
	endfunction
	localparam [19:0] N = ((AUDIO_RATE % 125) == 0 ? sv2v_cast_20_signed((16 * AUDIO_RATE) / 125) : ((AUDIO_RATE % 225) == 0 ? sv2v_cast_20_signed((32 * AUDIO_RATE) / 225) : sv2v_cast_20_signed((AUDIO_RATE * 16) / 125)));
	localparam signed [31:0] CLK_AUDIO_COUNTER_WIDTH = $clog2(N / 128);
	function automatic [CLK_AUDIO_COUNTER_WIDTH - 1:0] sv2v_cast_C773D;
		input reg [CLK_AUDIO_COUNTER_WIDTH - 1:0] inp;
		sv2v_cast_C773D = inp;
	endfunction
	localparam [CLK_AUDIO_COUNTER_WIDTH - 1:0] CLK_AUDIO_COUNTER_END = sv2v_cast_C773D((N / 128) - 1);
	function automatic signed [CLK_AUDIO_COUNTER_WIDTH - 1:0] sv2v_cast_C773D_signed;
		input reg signed [CLK_AUDIO_COUNTER_WIDTH - 1:0] inp;
		sv2v_cast_C773D_signed = inp;
	endfunction
	reg [CLK_AUDIO_COUNTER_WIDTH - 1:0] clk_audio_counter = sv2v_cast_C773D_signed(0);
	reg internal_clk_audio_counter_wrap = 1'd0;
	always @(posedge clk_audio)
		if (clk_audio_counter == CLK_AUDIO_COUNTER_END) begin
			clk_audio_counter <= sv2v_cast_C773D_signed(0);
			internal_clk_audio_counter_wrap <= !internal_clk_audio_counter_wrap;
		end
		else
			clk_audio_counter <= clk_audio_counter + 1'd1;
	reg [1:0] clk_audio_counter_wrap_synchronizer_chain = 2'd0;
	always @(posedge clk_pixel) clk_audio_counter_wrap_synchronizer_chain <= {internal_clk_audio_counter_wrap, clk_audio_counter_wrap_synchronizer_chain[1]};
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	localparam [19:0] CYCLE_TIME_STAMP_COUNTER_IDEAL = sv2v_cast_20_signed(sv2v_cast_32_signed(((VIDEO_RATE * sv2v_cast_32_signed(N)) / 128) / AUDIO_RATE));
	localparam signed [31:0] CYCLE_TIME_STAMP_COUNTER_WIDTH = $clog2((CYCLE_TIME_STAMP_COUNTER_IDEAL * 11) / 10);
	reg [19:0] cycle_time_stamp = 20'd0;
	function automatic signed [CYCLE_TIME_STAMP_COUNTER_WIDTH - 1:0] sv2v_cast_CB977_signed;
		input reg signed [CYCLE_TIME_STAMP_COUNTER_WIDTH - 1:0] inp;
		sv2v_cast_CB977_signed = inp;
	endfunction
	reg [CYCLE_TIME_STAMP_COUNTER_WIDTH - 1:0] cycle_time_stamp_counter = sv2v_cast_CB977_signed(0);
	function automatic signed [(20 - CYCLE_TIME_STAMP_COUNTER_WIDTH) - 1:0] sv2v_cast_3BF55_signed;
		input reg signed [(20 - CYCLE_TIME_STAMP_COUNTER_WIDTH) - 1:0] inp;
		sv2v_cast_3BF55_signed = inp;
	endfunction
	always @(posedge clk_pixel)
		if (clk_audio_counter_wrap_synchronizer_chain[1] ^ clk_audio_counter_wrap_synchronizer_chain[0]) begin
			cycle_time_stamp_counter <= sv2v_cast_CB977_signed(0);
			cycle_time_stamp <= {sv2v_cast_3BF55_signed(0), cycle_time_stamp_counter + sv2v_cast_CB977_signed(1)};
			clk_audio_counter_wrap <= !clk_audio_counter_wrap;
		end
		else
			cycle_time_stamp_counter <= cycle_time_stamp_counter + sv2v_cast_CB977_signed(1);
	assign header = 24'hxxxx01;
	genvar _gv_i_1;
	generate
		for (_gv_i_1 = 0; _gv_i_1 < 4; _gv_i_1 = _gv_i_1 + 1) begin : same_packet
			localparam i = _gv_i_1;
			assign sub[i * 56+:56] = {N[7:0], N[15:8], 4'd0, N[19:16], cycle_time_stamp[7:0], cycle_time_stamp[15:8], 4'd0, cycle_time_stamp[19:16], 8'd0};
		end
	endgenerate
endmodule
module audio_info_frame (
	header,
	sub
);
	parameter [2:0] AUDIO_CHANNEL_COUNT = 3'd1;
	parameter [7:0] CHANNEL_ALLOCATION = 8'h00;
	parameter [0:0] DOWN_MIX_INHIBITED = 1'b0;
	parameter [3:0] LEVEL_SHIFT_VALUE = 4'd0;
	parameter [1:0] LOW_FREQUENCY_EFFECTS_PLAYBACK_LEVEL = 2'b00;
	output wire [23:0] header;
	output wire [223:0] sub;
	localparam [3:0] AUDIO_CODING_TYPE = 4'd0;
	localparam [2:0] SAMPLING_FREQUENCY = 3'd0;
	localparam [1:0] SAMPLE_SIZE = 2'd0;
	localparam [4:0] LENGTH = 5'd10;
	localparam [7:0] VERSION = 8'd1;
	localparam [6:0] TYPE = 7'd4;
	assign header = {3'b000, LENGTH, VERSION, 1'b1, TYPE};
	wire [7:0] packet_bytes [27:0];
	assign packet_bytes[0] = 8'd1 + ~(((((((header[23:16] + header[15:8]) + header[7:0]) + packet_bytes[5]) + packet_bytes[4]) + packet_bytes[3]) + packet_bytes[2]) + packet_bytes[1]);
	assign packet_bytes[1] = {AUDIO_CODING_TYPE, 1'b0, AUDIO_CHANNEL_COUNT};
	assign packet_bytes[2] = {3'd0, SAMPLING_FREQUENCY, SAMPLE_SIZE};
	assign packet_bytes[3] = 8'd0;
	assign packet_bytes[4] = CHANNEL_ALLOCATION;
	assign packet_bytes[5] = {DOWN_MIX_INHIBITED, LEVEL_SHIFT_VALUE, 1'b0, LOW_FREQUENCY_EFFECTS_PLAYBACK_LEVEL};
	genvar _gv_i_2;
	generate
		for (_gv_i_2 = 6; _gv_i_2 < 28; _gv_i_2 = _gv_i_2 + 1) begin : pb_reserved
			localparam i = _gv_i_2;
			assign packet_bytes[i] = 8'd0;
		end
		for (_gv_i_2 = 0; _gv_i_2 < 4; _gv_i_2 = _gv_i_2 + 1) begin : pb_to_sub
			localparam i = _gv_i_2;
			assign sub[i * 56+:56] = {packet_bytes[6 + (i * 7)], packet_bytes[5 + (i * 7)], packet_bytes[4 + (i * 7)], packet_bytes[3 + (i * 7)], packet_bytes[2 + (i * 7)], packet_bytes[1 + (i * 7)], packet_bytes[0 + (i * 7)]};
		end
	endgenerate
endmodule
module audio_sample_packet (
	frame_counter,
	valid_bit,
	user_data_bit,
	audio_sample_word,
	audio_sample_word_present,
	header,
	sub
);
	reg _sv2v_0;
	parameter [0:0] GRADE = 1'b0;
	parameter [0:0] SAMPLE_WORD_TYPE = 1'b0;
	parameter [0:0] COPYRIGHT_NOT_ASSERTED = 1'b1;
	parameter [2:0] PRE_EMPHASIS = 3'b000;
	parameter [1:0] MODE = 2'b00;
	parameter [7:0] CATEGORY_CODE = 8'd0;
	parameter [3:0] SOURCE_NUMBER = 4'd0;
	parameter [3:0] SAMPLING_FREQUENCY = 4'b0000;
	parameter [1:0] CLOCK_ACCURACY = 2'b00;
	parameter [3:0] WORD_LENGTH = 0;
	parameter [3:0] ORIGINAL_SAMPLING_FREQUENCY = 4'b0000;
	parameter [0:0] LAYOUT = 1'b0;
	input wire [7:0] frame_counter;
	input wire [7:0] valid_bit;
	input wire [7:0] user_data_bit;
	input wire [191:0] audio_sample_word;
	input wire [3:0] audio_sample_word_present;
	output wire [23:0] header;
	output reg [223:0] sub;
	reg [3:0] CHANNEL_LEFT = 4'd1;
	reg [3:0] CHANNEL_RIGHT = 4'd2;
	localparam [7:0] CHANNEL_STATUS_LENGTH = 8'd192;
	wire [191:0] channel_status_left;
	assign channel_status_left = {152'd0, ORIGINAL_SAMPLING_FREQUENCY, WORD_LENGTH, 2'b00, CLOCK_ACCURACY, SAMPLING_FREQUENCY, CHANNEL_LEFT, SOURCE_NUMBER, CATEGORY_CODE, MODE, PRE_EMPHASIS, COPYRIGHT_NOT_ASSERTED, SAMPLE_WORD_TYPE, GRADE};
	wire [CHANNEL_STATUS_LENGTH - 1:0] channel_status_right;
	assign channel_status_right = {152'd0, ORIGINAL_SAMPLING_FREQUENCY, WORD_LENGTH, 2'b00, CLOCK_ACCURACY, SAMPLING_FREQUENCY, CHANNEL_RIGHT, SOURCE_NUMBER, CATEGORY_CODE, MODE, PRE_EMPHASIS, COPYRIGHT_NOT_ASSERTED, SAMPLE_WORD_TYPE, GRADE};
	assign header[19:12] = {7'b0000000, LAYOUT};
	assign header[7:0] = 8'd2;
	wire [1:0] parity_bit [3:0];
	reg [7:0] aligned_frame_counter [3:0];
	genvar _gv_i_3;
	function automatic [7:0] sv2v_cast_8;
		input reg [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	generate
		for (_gv_i_3 = 0; _gv_i_3 < 4; _gv_i_3 = _gv_i_3 + 1) begin : sample_based_assign
			localparam i = _gv_i_3;
			always @(*) begin
				if (_sv2v_0)
					;
				if (sv2v_cast_8(frame_counter + i) >= CHANNEL_STATUS_LENGTH)
					aligned_frame_counter[i] = sv2v_cast_8((frame_counter + i) - CHANNEL_STATUS_LENGTH);
				else
					aligned_frame_counter[i] = sv2v_cast_8(frame_counter + i);
			end
			assign header[20 + i] = (aligned_frame_counter[i] == 8'd0) && audio_sample_word_present[i];
			assign header[8 + i] = audio_sample_word_present[i];
			assign parity_bit[i][0] = ^{channel_status_left[aligned_frame_counter[i]], user_data_bit[i * 2], valid_bit[i * 2], audio_sample_word[(i * 2) * 24+:24]};
			assign parity_bit[i][1] = ^{channel_status_right[aligned_frame_counter[i]], user_data_bit[(i * 2) + 1], valid_bit[(i * 2) + 1], audio_sample_word[((i * 2) + 1) * 24+:24]};
			always @(*) begin
				if (_sv2v_0)
					;
				if (audio_sample_word_present[i])
					sub[i * 56+:56] = {parity_bit[i][1], channel_status_right[aligned_frame_counter[i]], user_data_bit[(i * 2) + 1], valid_bit[(i * 2) + 1], parity_bit[i][0], channel_status_left[aligned_frame_counter[i]], user_data_bit[i * 2], valid_bit[i * 2], audio_sample_word[((i * 2) + 1) * 24+:24], audio_sample_word[(i * 2) * 24+:24]};
				else
					sub[i * 56+:56] = 56'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
			end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module auxiliary_video_information_info_frame (
	header,
	sub
);
	parameter [1:0] VIDEO_FORMAT = 2'b00;
	parameter [0:0] ACTIVE_FORMAT_INFO_PRESENT = 1'b0;
	parameter [1:0] BAR_INFO = 2'b00;
	parameter [1:0] SCAN_INFO = 2'b00;
	parameter [1:0] COLORIMETRY = 2'b00;
	parameter [1:0] PICTURE_ASPECT_RATIO = 2'b00;
	parameter [3:0] ACTIVE_FORMAT_ASPECT_RATIO = 4'b1000;
	parameter [0:0] IT_CONTENT = 1'b0;
	parameter [2:0] EXTENDED_COLORIMETRY = 3'b000;
	parameter [1:0] RGB_QUANTIZATION_RANGE = 2'b00;
	parameter [1:0] NON_UNIFORM_PICTURE_SCALING = 2'b00;
	parameter signed [31:0] VIDEO_ID_CODE = 4;
	parameter [1:0] YCC_QUANTIZATION_RANGE = 2'b00;
	parameter [1:0] CONTENT_TYPE = 2'b00;
	parameter [3:0] PIXEL_REPETITION = 4'b0000;
	output wire [23:0] header;
	output wire [223:0] sub;
	localparam [4:0] LENGTH = 5'd13;
	localparam [7:0] VERSION = 8'd2;
	localparam [6:0] TYPE = 7'd2;
	assign header = {3'b000, LENGTH, VERSION, 1'b1, TYPE};
	wire [7:0] packet_bytes [27:0];
	assign packet_bytes[0] = 8'd1 + ~(((((((((((((((header[23:16] + header[15:8]) + header[7:0]) + packet_bytes[13]) + packet_bytes[12]) + packet_bytes[11]) + packet_bytes[10]) + packet_bytes[9]) + packet_bytes[8]) + packet_bytes[7]) + packet_bytes[6]) + packet_bytes[5]) + packet_bytes[4]) + packet_bytes[3]) + packet_bytes[2]) + packet_bytes[1]);
	assign packet_bytes[1] = {1'b0, VIDEO_FORMAT, ACTIVE_FORMAT_INFO_PRESENT, BAR_INFO, SCAN_INFO};
	assign packet_bytes[2] = {COLORIMETRY, PICTURE_ASPECT_RATIO, ACTIVE_FORMAT_ASPECT_RATIO};
	assign packet_bytes[3] = {IT_CONTENT, EXTENDED_COLORIMETRY, RGB_QUANTIZATION_RANGE, NON_UNIFORM_PICTURE_SCALING};
	function automatic signed [6:0] sv2v_cast_7_signed;
		input reg signed [6:0] inp;
		sv2v_cast_7_signed = inp;
	endfunction
	assign packet_bytes[4] = {1'b0, sv2v_cast_7_signed(VIDEO_ID_CODE)};
	assign packet_bytes[5] = {YCC_QUANTIZATION_RANGE, CONTENT_TYPE, PIXEL_REPETITION};
	genvar _gv_i_4;
	generate
		if (BAR_INFO != 2'b00) begin : genblk1
			assign packet_bytes[6] = 8'hff;
			assign packet_bytes[7] = 8'hff;
			assign packet_bytes[8] = 8'h00;
			assign packet_bytes[9] = 8'h00;
			assign packet_bytes[10] = 8'hff;
			assign packet_bytes[11] = 8'hff;
			assign packet_bytes[12] = 8'h00;
			assign packet_bytes[13] = 8'h00;
		end
		else begin : genblk1
			assign packet_bytes[6] = 8'h00;
			assign packet_bytes[7] = 8'h00;
			assign packet_bytes[8] = 8'h00;
			assign packet_bytes[9] = 8'h00;
			assign packet_bytes[10] = 8'h00;
			assign packet_bytes[11] = 8'h00;
			assign packet_bytes[12] = 8'h00;
			assign packet_bytes[13] = 8'h00;
		end
		for (_gv_i_4 = 14; _gv_i_4 < 28; _gv_i_4 = _gv_i_4 + 1) begin : pb_reserved
			localparam i = _gv_i_4;
			assign packet_bytes[i] = 8'd0;
		end
		for (_gv_i_4 = 0; _gv_i_4 < 4; _gv_i_4 = _gv_i_4 + 1) begin : pb_to_sub
			localparam i = _gv_i_4;
			assign sub[i * 56+:56] = {packet_bytes[6 + (i * 7)], packet_bytes[5 + (i * 7)], packet_bytes[4 + (i * 7)], packet_bytes[3 + (i * 7)], packet_bytes[2 + (i * 7)], packet_bytes[1 + (i * 7)], packet_bytes[0 + (i * 7)]};
		end
	endgenerate
endmodule
module hdmi (
	clk_pixel_x5,
	clk_pixel,
	clk_audio,
	reset,
	rgb,
	audio_sample_word,
	tmds,
	tmds_clock,
	cx,
	cy,
	frame_width,
	frame_height,
	screen_width,
	screen_height
);
	reg _sv2v_0;
	parameter signed [31:0] VIDEO_WIDE = 0;
	parameter signed [31:0] VIDEO_ID_CODE = 1;
	parameter [0:0] IT_CONTENT = 1'b1;
	parameter signed [31:0] BIT_WIDTH = (VIDEO_ID_CODE < 4 ? 10 : ((VIDEO_ID_CODE == 4) || (VIDEO_ID_CODE == 65) ? 11 : 12));
	parameter signed [31:0] BIT_HEIGHT = (VIDEO_ID_CODE == 16 ? 11 : 10);
	parameter [0:0] DVI_OUTPUT = 1'b0;
	parameter real VIDEO_REFRESH_RATE = 59.94;
	parameter signed [31:0] AUDIO_RATE = 44100;
	parameter signed [31:0] AUDIO_BIT_WIDTH = 16;
	parameter [63:0] VENDOR_NAME = {"Unknown", 8'd0};
	parameter [127:0] PRODUCT_DESCRIPTION = {"FPGA", 96'd0};
	parameter [7:0] SOURCE_DEVICE_INFORMATION = 8'h00;
	parameter signed [31:0] START_X = 0;
	parameter signed [31:0] START_Y = 0;
	input wire clk_pixel_x5;
	input wire clk_pixel;
	input wire clk_audio;
	input wire reset;
	input wire [23:0] rgb;
	input wire [(2 * AUDIO_BIT_WIDTH) - 1:0] audio_sample_word;
	output wire [2:0] tmds;
	output wire tmds_clock;
	output reg [BIT_WIDTH - 1:0] cx = START_X;
	output reg [BIT_HEIGHT - 1:0] cy = START_Y;
	output wire [BIT_WIDTH - 1:0] frame_width;
	output wire [BIT_HEIGHT - 1:0] frame_height;
	output wire [BIT_WIDTH - 1:0] screen_width;
	output wire [BIT_HEIGHT - 1:0] screen_height;
	localparam signed [31:0] NUM_CHANNELS = 3;
	reg hsync;
	reg vsync;
	wire [BIT_WIDTH - 1:0] hsync_pulse_start;
	wire [BIT_WIDTH - 1:0] hsync_pulse_size;
	wire [BIT_HEIGHT - 1:0] vsync_pulse_start;
	wire [BIT_HEIGHT - 1:0] vsync_pulse_size;
	wire invert;
	generate
		case (VIDEO_ID_CODE)
			1: begin : genblk1
				assign frame_width = 800;
				assign frame_height = 525;
				assign screen_width = 640;
				assign screen_height = 480;
				assign hsync_pulse_start = 16;
				assign hsync_pulse_size = 96;
				assign vsync_pulse_start = 10;
				assign vsync_pulse_size = 2;
				assign invert = 1;
			end
			2, 3: begin : genblk1
				assign frame_width = 858;
				assign frame_height = 525;
				assign screen_width = 720;
				assign screen_height = 480;
				assign hsync_pulse_start = 16;
				assign hsync_pulse_size = 62;
				assign vsync_pulse_start = 9;
				assign vsync_pulse_size = 6;
				assign invert = 1;
			end
			4: begin : genblk1
				assign frame_width = 1650;
				assign frame_height = 750;
				assign screen_width = 1280;
				assign screen_height = 720;
				assign hsync_pulse_start = 110;
				assign hsync_pulse_size = 40;
				assign vsync_pulse_start = 5;
				assign vsync_pulse_size = 5;
				assign invert = 0;
			end
			16, 34: begin : genblk1
				assign frame_width = 2200;
				assign frame_height = 1125;
				assign screen_width = 1920;
				assign screen_height = 1080;
				assign hsync_pulse_start = 88;
				assign hsync_pulse_size = 44;
				assign vsync_pulse_start = 4;
				assign vsync_pulse_size = 5;
				assign invert = 0;
			end
			17, 18: begin : genblk1
				assign frame_width = 864;
				assign frame_height = 625;
				assign screen_width = 720;
				assign screen_height = 576;
				assign hsync_pulse_start = 12;
				assign hsync_pulse_size = 64;
				assign vsync_pulse_start = 5;
				assign vsync_pulse_size = 5;
				assign invert = 1;
			end
			19: begin : genblk1
				assign frame_width = 1980;
				assign frame_height = 750;
				assign screen_width = 1280;
				assign screen_height = 720;
				assign hsync_pulse_start = 440;
				assign hsync_pulse_size = 40;
				assign vsync_pulse_start = 5;
				assign vsync_pulse_size = 5;
				assign invert = 0;
			end
			65: begin : genblk1
				if (VIDEO_WIDE) begin : genblk1
					assign frame_width = 1344;
					assign screen_width = 1024;
					assign hsync_pulse_start = 32;
					assign hsync_pulse_size = 72;
				end
				else begin : genblk1
					assign frame_width = 976;
					assign screen_width = 768;
					assign hsync_pulse_start = 24;
					assign hsync_pulse_size = 80;
				end
				assign frame_height = 597;
				assign screen_height = 576;
				assign vsync_pulse_start = 1;
				assign vsync_pulse_size = 3;
				assign invert = 1;
			end
			95, 105, 97, 107: begin : genblk1
				assign frame_width = 4400;
				assign frame_height = 2250;
				assign screen_width = 3840;
				assign screen_height = 2160;
				assign hsync_pulse_start = 176;
				assign hsync_pulse_size = 88;
				assign vsync_pulse_start = 8;
				assign vsync_pulse_size = 10;
				assign invert = 0;
			end
		endcase
	endgenerate
	always @(*) begin
		if (_sv2v_0)
			;
		hsync <= invert ^ ((cx >= (screen_width + hsync_pulse_start)) && (cx < ((screen_width + hsync_pulse_start) + hsync_pulse_size)));
		if (cy == (screen_height + vsync_pulse_start))
			vsync <= invert ^ (cx >= (screen_width + hsync_pulse_start));
		else if (cy == ((screen_height + vsync_pulse_start) + vsync_pulse_size))
			vsync <= invert ^ (cx < (screen_width + hsync_pulse_start));
		else
			vsync <= invert ^ ((cy >= (screen_height + vsync_pulse_start)) && (cy < ((screen_height + vsync_pulse_start) + vsync_pulse_size)));
	end
	localparam real VIDEO_RATE = (VIDEO_ID_CODE == 1 ? 25.2E6 : ((VIDEO_ID_CODE == 2) || (VIDEO_ID_CODE == 3) ? 27.027E6 : (VIDEO_ID_CODE == 4 ? 74.25E6 : (VIDEO_ID_CODE == 16 ? 148.5E6 : ((VIDEO_ID_CODE == 17) || (VIDEO_ID_CODE == 18) ? 27E6 : (VIDEO_ID_CODE == 19 ? 74.25E6 : (VIDEO_ID_CODE == 34 ? 74.25E6 : (VIDEO_ID_CODE == 65 ? (VIDEO_WIDE ? 47.8E6 : 38.4E6) : ((((VIDEO_ID_CODE == 95) || (VIDEO_ID_CODE == 105)) || (VIDEO_ID_CODE == 97)) || (VIDEO_ID_CODE == 107) ? 594E6 : 0))))))))) * ((VIDEO_REFRESH_RATE == 59.94) || (VIDEO_REFRESH_RATE == 29.97) ? 1000.0 / 1001.0 : 1);
	function automatic signed [BIT_WIDTH - 1:0] sv2v_cast_AA29A_signed;
		input reg signed [BIT_WIDTH - 1:0] inp;
		sv2v_cast_AA29A_signed = inp;
	endfunction
	function automatic signed [BIT_HEIGHT - 1:0] sv2v_cast_FE860_signed;
		input reg signed [BIT_HEIGHT - 1:0] inp;
		sv2v_cast_FE860_signed = inp;
	endfunction
	always @(posedge clk_pixel)
		if (reset) begin
			cx <= sv2v_cast_AA29A_signed(START_X);
			cy <= sv2v_cast_FE860_signed(START_Y);
		end
		else begin
			cx <= (cx == (frame_width - 1'b1) ? sv2v_cast_AA29A_signed(0) : cx + 1'b1);
			cy <= (cx == (frame_width - 1'b1) ? (cy == (frame_height - 1'b1) ? sv2v_cast_FE860_signed(0) : cy + 1'b1) : cy);
		end
	reg video_data_period = 0;
	always @(posedge clk_pixel)
		if (reset)
			video_data_period <= 0;
		else
			video_data_period <= (cx < screen_width) && (cy < screen_height);
	reg [2:0] mode = 3'd1;
	reg [23:0] video_data = 24'd0;
	reg [5:0] control_data = 6'd0;
	reg [11:0] data_island_data = 12'd0;
	function automatic signed [4:0] sv2v_cast_5_signed;
		input reg signed [4:0] inp;
		sv2v_cast_5_signed = inp;
	endfunction
	function automatic [4:0] sv2v_cast_5;
		input reg [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	generate
		if (!DVI_OUTPUT) begin : true_hdmi_output
			reg video_guard = 1;
			reg video_preamble = 0;
			always @(posedge clk_pixel)
				if (reset) begin
					video_guard <= 1;
					video_preamble <= 0;
				end
				else begin
					video_guard <= ((cx >= (frame_width - 2)) && (cx < frame_width)) && ((cy == (frame_height - 1)) || (cy < screen_height));
					video_preamble <= ((cx >= (frame_width - 10)) && (cx < (frame_width - 2))) && ((cy == (frame_height - 1)) || (cy < screen_height));
				end
			reg signed [31:0] max_num_packets_alongside;
			reg [4:0] num_packets_alongside;
			always @(*) begin
				if (_sv2v_0)
					;
				max_num_packets_alongside = ((frame_width - screen_width) - 34) / 32;
				if (max_num_packets_alongside > 18)
					num_packets_alongside = 5'd18;
				else
					num_packets_alongside = sv2v_cast_5_signed(max_num_packets_alongside);
			end
			wire data_island_period_instantaneous;
			assign data_island_period_instantaneous = ((num_packets_alongside > 0) && (cx >= (screen_width + 10))) && (cx < ((screen_width + 10) + (num_packets_alongside * 32)));
			wire packet_enable;
			assign packet_enable = data_island_period_instantaneous && (sv2v_cast_5((cx + screen_width) + 22) == 5'd0);
			reg data_island_guard = 0;
			reg data_island_preamble = 0;
			reg data_island_period = 0;
			always @(posedge clk_pixel)
				if (reset) begin
					data_island_guard <= 0;
					data_island_preamble <= 0;
					data_island_period <= 0;
				end
				else begin
					data_island_guard <= (num_packets_alongside > 0) && (((cx >= (screen_width + 8)) && (cx < (screen_width + 10))) || ((cx >= ((screen_width + 10) + (num_packets_alongside * 32))) && (cx < (((screen_width + 10) + (num_packets_alongside * 32)) + 2))));
					data_island_preamble <= ((num_packets_alongside > 0) && (cx >= screen_width)) && (cx < (screen_width + 8));
					data_island_period <= data_island_period_instantaneous;
				end
			wire [23:0] header;
			wire [223:0] sub;
			wire video_field_end;
			assign video_field_end = (cx == (screen_width - 1'b1)) && (cy == (screen_height - 1'b1));
			wire [4:0] packet_pixel_counter;
			packet_picker #(
				.VIDEO_ID_CODE(VIDEO_ID_CODE),
				.VIDEO_RATE(VIDEO_RATE),
				.IT_CONTENT(IT_CONTENT),
				.AUDIO_RATE(AUDIO_RATE),
				.AUDIO_BIT_WIDTH(AUDIO_BIT_WIDTH),
				.VENDOR_NAME(VENDOR_NAME),
				.PRODUCT_DESCRIPTION(PRODUCT_DESCRIPTION),
				.SOURCE_DEVICE_INFORMATION(SOURCE_DEVICE_INFORMATION)
			) packet_picker(
				.clk_pixel(clk_pixel),
				.clk_audio(clk_audio),
				.reset(reset),
				.video_field_end(video_field_end),
				.packet_enable(packet_enable),
				.packet_pixel_counter(packet_pixel_counter),
				.audio_sample_word(audio_sample_word),
				.header(header),
				.sub(sub)
			);
			wire [8:0] packet_data;
			packet_assembler packet_assembler(
				.clk_pixel(clk_pixel),
				.reset(reset),
				.data_island_period(data_island_period),
				.header(header),
				.sub(sub),
				.packet_data(packet_data),
				.counter(packet_pixel_counter)
			);
			always @(posedge clk_pixel)
				if (reset) begin
					mode <= 3'd2;
					video_data <= 24'd0;
					control_data = 6'd0;
					data_island_data <= 12'd0;
				end
				else begin
					mode <= (data_island_guard ? 3'd4 : (data_island_period ? 3'd3 : (video_guard ? 3'd2 : (video_data_period ? 3'd1 : 3'd0))));
					video_data <= rgb;
					control_data <= {1'b0, data_island_preamble, 1'b0, video_preamble || data_island_preamble, vsync, hsync};
					data_island_data[11:4] <= packet_data[8:1];
					data_island_data[3] <= cx != 0;
					data_island_data[2] <= packet_data[0];
					data_island_data[1:0] <= {vsync, hsync};
				end
		end
		else begin : genblk2
			always @(posedge clk_pixel)
				if (reset) begin
					mode <= 3'd0;
					video_data <= 24'd0;
					control_data <= 6'd0;
				end
				else begin
					mode <= (video_data_period ? 3'd1 : 3'd0);
					video_data <= rgb;
					control_data <= {4'b0000, vsync, hsync};
				end
		end
	endgenerate
	wire [29:0] tmds_internal;
	genvar _gv_i_5;
	generate
		for (_gv_i_5 = 0; _gv_i_5 < NUM_CHANNELS; _gv_i_5 = _gv_i_5 + 1) begin : tmds_gen
			localparam i = _gv_i_5;
			tmds_channel #(.CN(i)) tmds_channel(
				.clk_pixel(clk_pixel),
				.video_data(video_data[(i * 8) + 7:i * 8]),
				.data_island_data(data_island_data[(i * 4) + 3:i * 4]),
				.control_data(control_data[(i * 2) + 1:i * 2]),
				.mode(mode),
				.tmds(tmds_internal[i * 10+:10])
			);
		end
	endgenerate
	serializer #(
		.NUM_CHANNELS(NUM_CHANNELS),
		.VIDEO_RATE(VIDEO_RATE)
	) serializer(
		.clk_pixel(clk_pixel),
		.clk_pixel_x5(clk_pixel_x5),
		.reset(reset),
		.tmds_internal(tmds_internal),
		.tmds(tmds),
		.tmds_clock(tmds_clock)
	);
	initial _sv2v_0 = 0;
endmodule
module packet_assembler (
	clk_pixel,
	reset,
	data_island_period,
	header,
	sub,
	packet_data,
	counter
);
	input wire clk_pixel;
	input wire reset;
	input wire data_island_period;
	input wire [23:0] header;
	input wire [223:0] sub;
	output wire [8:0] packet_data;
	output reg [4:0] counter = 5'd0;
	always @(posedge clk_pixel)
		if (reset)
			counter <= 5'd0;
		else if (data_island_period)
			counter <= counter + 5'd1;
	wire [5:0] counter_t2 = {counter, 1'b0};
	wire [5:0] counter_t2_p1 = {counter, 1'b1};
	reg [39:0] parity = 40'h0000000000;
	wire [63:0] bch [3:0];
	assign bch[0] = {parity[0+:8], sub[0+:56]};
	assign bch[1] = {parity[8+:8], sub[56+:56]};
	assign bch[2] = {parity[16+:8], sub[112+:56]};
	assign bch[3] = {parity[24+:8], sub[168+:56]};
	wire [31:0] bch4 = {parity[32+:8], header};
	assign packet_data = {bch[3][counter_t2_p1], bch[2][counter_t2_p1], bch[1][counter_t2_p1], bch[0][counter_t2_p1], bch[3][counter_t2], bch[2][counter_t2], bch[1][counter_t2], bch[0][counter_t2], bch4[counter]};
	function automatic [7:0] next_ecc;
		input [7:0] ecc;
		input [7:0] next_bch_bit;
		next_ecc = (ecc >> 1) ^ (ecc[0] ^ next_bch_bit ? 8'b10000011 : 8'd0);
	endfunction
	wire [7:0] parity_next [4:0];
	wire [31:0] parity_next_next;
	genvar _gv_i_6;
	generate
		for (_gv_i_6 = 0; _gv_i_6 < 5; _gv_i_6 = _gv_i_6 + 1) begin : parity_calc
			localparam i = _gv_i_6;
			if (i == 4) begin : genblk1
				assign parity_next[i] = next_ecc(parity[i * 8+:8], header[counter]);
			end
			else begin : genblk1
				assign parity_next[i] = next_ecc(parity[i * 8+:8], sub[(i * 56) + counter_t2]);
				assign parity_next_next[i * 8+:8] = next_ecc(parity_next[i], sub[(i * 56) + counter_t2_p1]);
			end
		end
	endgenerate
	always @(posedge clk_pixel)
		if (reset)
			parity <= 40'h0000000000;
		else if (data_island_period) begin
			if (counter < 5'd28) begin
				parity[0+:32] <= parity_next_next;
				if (counter < 5'd24)
					parity[32+:8] <= parity_next[4];
			end
			else if (counter == 5'd31)
				parity <= 40'h0000000000;
		end
		else
			parity <= 40'h0000000000;
endmodule
module packet_picker (
    clk_pixel,
    clk_audio,
    reset,
    video_field_end,
    packet_enable,
    packet_pixel_counter,
    audio_sample_word,
    header,
    sub
);
    reg _sv2v_0;
    parameter signed [31:0] VIDEO_ID_CODE = 4;
    parameter real VIDEO_RATE = 0;
    parameter [0:0] IT_CONTENT = 1'b0;
    parameter signed [31:0] AUDIO_BIT_WIDTH = 0;
    parameter signed [31:0] AUDIO_RATE = 0;
    parameter [63:0] VENDOR_NAME = 0;
    parameter [127:0] PRODUCT_DESCRIPTION = 0;
    parameter [7:0] SOURCE_DEVICE_INFORMATION = 0;
    input wire clk_pixel;
    input wire clk_audio;
    input wire reset;
    input wire video_field_end;
    input wire packet_enable;
    input wire [4:0] packet_pixel_counter;
    input wire [(2 * AUDIO_BIT_WIDTH) - 1:0] audio_sample_word;
    output wire [23:0] header;
    output wire [223:0] sub;
    reg [7:0] packet_type = 8'd0;
    wire [23:0] headers [255:0];
    wire [223:0] subs [255:0];
    assign header = headers[packet_type];
    assign sub[0+:56] = subs[packet_type][0+:56];
    assign sub[56+:56] = subs[packet_type][56+:56];
    assign sub[112+:56] = subs[packet_type][112+:56];
    assign sub[168+:56] = subs[packet_type][168+:56];
    assign headers[0] = 24'hxxxx00;
    assign subs[0][0+:56] = 56'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    assign subs[0][56+:56] = 56'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    assign subs[0][112+:56] = 56'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    assign subs[0][168+:56] = 56'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    wire clk_audio_counter_wrap;
    audio_clock_regeneration_packet #(
        .VIDEO_RATE(VIDEO_RATE),
        .AUDIO_RATE(AUDIO_RATE)
    ) audio_clock_regeneration_packet(
        .clk_pixel(clk_pixel),
        .clk_audio(clk_audio),
        .clk_audio_counter_wrap(clk_audio_counter_wrap),
        .header(headers[1]),
        .sub(subs[1])
    );
    localparam [3:0] SAMPLING_FREQUENCY = (AUDIO_RATE == 32000 ? 4'b0011 : (AUDIO_RATE == 44100 ? 4'b0000 : (AUDIO_RATE == 88200 ? 4'b1000 : (AUDIO_RATE == 176400 ? 4'b1100 : (AUDIO_RATE == 48000 ? 4'b0010 : (AUDIO_RATE == 96000 ? 4'b1010 : (AUDIO_RATE == 192000 ? 4'b1110 : 4'bxxxx)))))));
    localparam signed [31:0] AUDIO_BIT_WIDTH_COMPARATOR = (AUDIO_BIT_WIDTH < 20 ? 20 : (AUDIO_BIT_WIDTH == 20 ? 25 : (AUDIO_BIT_WIDTH < 24 ? 24 : (AUDIO_BIT_WIDTH == 24 ? 29 : -1))));
    function automatic signed [2:0] sv2v_cast_3_signed;
        input reg signed [2:0] inp;
        sv2v_cast_3_signed = inp;
    endfunction
    localparam [2:0] WORD_LENGTH = sv2v_cast_3_signed(AUDIO_BIT_WIDTH_COMPARATOR - AUDIO_BIT_WIDTH);
    localparam [0:0] WORD_LENGTH_LIMIT = (AUDIO_BIT_WIDTH <= 20 ? 1'b0 : 1'b1);
    reg [(2 * AUDIO_BIT_WIDTH) - 1:0] audio_sample_word_transfer;
    reg audio_sample_word_transfer_control = 1'd0;
    always @(posedge clk_audio) begin
        audio_sample_word_transfer <= audio_sample_word;
        audio_sample_word_transfer_control <= !audio_sample_word_transfer_control;
    end
    reg [1:0] audio_sample_word_transfer_control_synchronizer_chain = 2'd0;
    always @(posedge clk_pixel) audio_sample_word_transfer_control_synchronizer_chain <= {audio_sample_word_transfer_control, audio_sample_word_transfer_control_synchronizer_chain[1]};
    reg sample_buffer_current = 1'b0;
    reg [1:0] samples_remaining = 2'd0;
    
    // FIX: Removed (* syn_ramstyle = "block_ram" *) to save ~48 BRAM blocks
    reg [191:0] audio_sample_word_buffer [1:0];
    
    reg [(2 * AUDIO_BIT_WIDTH) - 1:0] audio_sample_word_transfer_mux;
    always @(*) begin
        if (_sv2v_0)
            ;
        if (audio_sample_word_transfer_control_synchronizer_chain[0] ^ audio_sample_word_transfer_control_synchronizer_chain[1])
            audio_sample_word_transfer_mux = audio_sample_word_transfer;
        else
            audio_sample_word_transfer_mux = {audio_sample_word_buffer[sample_buffer_current][(((samples_remaining * 2) + 1) * 24) + (23 >= (24 - AUDIO_BIT_WIDTH) ? 23 : (23 + (23 >= (24 - AUDIO_BIT_WIDTH) ? 0 + AUDIO_BIT_WIDTH : (24 - AUDIO_BIT_WIDTH) - 22)) - 1)-:(23 >= (24 - AUDIO_BIT_WIDTH) ? 0 + AUDIO_BIT_WIDTH : (24 - AUDIO_BIT_WIDTH) - 22)], audio_sample_word_buffer[sample_buffer_current][((samples_remaining * 2) * 24) + (23 >= (24 - AUDIO_BIT_WIDTH) ? 23 : (23 + (23 >= (24 - AUDIO_BIT_WIDTH) ? 0 + AUDIO_BIT_WIDTH : (24 - AUDIO_BIT_WIDTH) - 22)) - 1)-:(23 >= (24 - AUDIO_BIT_WIDTH) ? 0 + AUDIO_BIT_WIDTH : (24 - AUDIO_BIT_WIDTH) - 22)]};
    end
    reg sample_buffer_used = 1'b0;
    reg sample_buffer_ready = 1'b0;
    function automatic [23:0] sv2v_cast_24;
        input reg [23:0] inp;
        sv2v_cast_24 = inp;
    endfunction
    always @(posedge clk_pixel) begin
        if (sample_buffer_used)
            sample_buffer_ready <= 1'b0;
        if (audio_sample_word_transfer_control_synchronizer_chain[0] ^ audio_sample_word_transfer_control_synchronizer_chain[1]) begin
            audio_sample_word_buffer[sample_buffer_current][(samples_remaining * 2) * 24+:24] <= sv2v_cast_24(audio_sample_word_transfer_mux[0+:AUDIO_BIT_WIDTH]) << (24 - AUDIO_BIT_WIDTH);
            audio_sample_word_buffer[sample_buffer_current][((samples_remaining * 2) + 1) * 24+:24] <= sv2v_cast_24(audio_sample_word_transfer_mux[AUDIO_BIT_WIDTH+:AUDIO_BIT_WIDTH]) << (24 - AUDIO_BIT_WIDTH);
            if (samples_remaining == 2'd3) begin
                samples_remaining <= 2'd0;
                sample_buffer_ready <= 1'b1;
                sample_buffer_current <= !sample_buffer_current;
            end
            else
                samples_remaining <= samples_remaining + 1'd1;
        end
    end
    reg [191:0] audio_sample_word_packet;
    reg [3:0] audio_sample_word_present_packet;
    reg [7:0] frame_counter = 8'd0;
    wire signed [31:0] k;
    always @(posedge clk_pixel)
        if (reset)
            frame_counter <= 8'd0;
        else if ((packet_pixel_counter == 5'd31) && (packet_type == 8'h02)) begin
            frame_counter = frame_counter + 8'd4;
            if (frame_counter >= 8'd192)
                frame_counter = frame_counter - 8'd192;
        end
    audio_sample_packet #(
        .SAMPLING_FREQUENCY(SAMPLING_FREQUENCY),
        .WORD_LENGTH({WORD_LENGTH[0], WORD_LENGTH[1], WORD_LENGTH[2], WORD_LENGTH_LIMIT})
    ) audio_sample_packet(
        .frame_counter(frame_counter),
        .valid_bit(8'b00000000),
        .user_data_bit(8'b00000000),
        .audio_sample_word(audio_sample_word_packet),
        .audio_sample_word_present(audio_sample_word_present_packet),
        .header(headers[2]),
        .sub(subs[2])
    );
    function automatic signed [6:0] sv2v_cast_7_signed;
        input reg signed [6:0] inp;
        sv2v_cast_7_signed = inp;
    endfunction
    auxiliary_video_information_info_frame #(
        .VIDEO_ID_CODE(sv2v_cast_7_signed(VIDEO_ID_CODE)),
        .IT_CONTENT(IT_CONTENT)
    ) auxiliary_video_information_info_frame(
        .header(headers[130]),
        .sub(subs[130])
    );
    source_product_description_info_frame #(
        .VENDOR_NAME(VENDOR_NAME),
        .PRODUCT_DESCRIPTION(PRODUCT_DESCRIPTION),
        .SOURCE_DEVICE_INFORMATION(SOURCE_DEVICE_INFORMATION)
    ) source_product_description_info_frame(
        .header(headers[131]),
        .sub(subs[131])
    );
    audio_info_frame audio_info_frame(
        .header(headers[132]),
        .sub(subs[132])
    );
    reg audio_info_frame_sent = 1'b0;
    reg auxiliary_video_information_info_frame_sent = 1'b0;
    reg source_product_description_info_frame_sent = 1'b0;
    reg last_clk_audio_counter_wrap = 1'b0;
    always @(posedge clk_pixel) begin
        if (sample_buffer_used)
            sample_buffer_used <= 1'b0;
        if (reset || video_field_end) begin
            audio_info_frame_sent <= 1'b0;
            auxiliary_video_information_info_frame_sent <= 1'b0;
            source_product_description_info_frame_sent <= 1'b0;
            packet_type <= 8'bxxxxxxxx;
        end
        else if (packet_enable) begin
            if (last_clk_audio_counter_wrap ^ clk_audio_counter_wrap) begin
                packet_type <= 8'd1;
                last_clk_audio_counter_wrap <= clk_audio_counter_wrap;
            end
            else if (sample_buffer_ready) begin
                packet_type <= 8'd2;
                audio_sample_word_packet <= audio_sample_word_buffer[!sample_buffer_current];
                audio_sample_word_present_packet <= 4'b1111;
                sample_buffer_used <= 1'b1;
            end
            else if (!audio_info_frame_sent) begin
                packet_type <= 8'h84;
                audio_info_frame_sent <= 1'b1;
            end
            else if (!auxiliary_video_information_info_frame_sent) begin
                packet_type <= 8'h82;
                auxiliary_video_information_info_frame_sent <= 1'b1;
            end
            else if (!source_product_description_info_frame_sent) begin
                packet_type <= 8'h83;
                source_product_description_info_frame_sent <= 1'b1;
            end
            else
                packet_type <= 8'd0;
        end
    end
    initial _sv2v_0 = 0;
endmodule
module serializer (
	clk_pixel,
	clk_pixel_x5,
	reset,
	tmds_internal,
	tmds,
	tmds_clock
);
	parameter signed [31:0] NUM_CHANNELS = 3;
	parameter real VIDEO_RATE = 0;
	input wire clk_pixel;
	input wire clk_pixel_x5;
	input wire reset;
	input wire [(NUM_CHANNELS * 10) - 1:0] tmds_internal;
	output wire [2:0] tmds;
	output wire tmds_clock;
	OSER10 gwSer0(
		.Q(tmds[0]),
		.D0(tmds_internal[0]),
		.D1(tmds_internal[1]),
		.D2(tmds_internal[2]),
		.D3(tmds_internal[3]),
		.D4(tmds_internal[4]),
		.D5(tmds_internal[5]),
		.D6(tmds_internal[6]),
		.D7(tmds_internal[7]),
		.D8(tmds_internal[8]),
		.D9(tmds_internal[9]),
		.PCLK(clk_pixel),
		.FCLK(clk_pixel_x5),
		.RESET(reset)
	);
	OSER10 gwSer1(
		.Q(tmds[1]),
		.D0(tmds_internal[10]),
		.D1(tmds_internal[11]),
		.D2(tmds_internal[12]),
		.D3(tmds_internal[13]),
		.D4(tmds_internal[14]),
		.D5(tmds_internal[15]),
		.D6(tmds_internal[16]),
		.D7(tmds_internal[17]),
		.D8(tmds_internal[18]),
		.D9(tmds_internal[19]),
		.PCLK(clk_pixel),
		.FCLK(clk_pixel_x5),
		.RESET(reset)
	);
	OSER10 gwSer2(
		.Q(tmds[2]),
		.D0(tmds_internal[20]),
		.D1(tmds_internal[21]),
		.D2(tmds_internal[22]),
		.D3(tmds_internal[23]),
		.D4(tmds_internal[24]),
		.D5(tmds_internal[25]),
		.D6(tmds_internal[26]),
		.D7(tmds_internal[27]),
		.D8(tmds_internal[28]),
		.D9(tmds_internal[29]),
		.PCLK(clk_pixel),
		.FCLK(clk_pixel_x5),
		.RESET(reset)
	);
	assign tmds_clock = clk_pixel;
endmodule
module source_product_description_info_frame (
	header,
	sub
);
	parameter [63:0] VENDOR_NAME = 0;
	parameter [127:0] PRODUCT_DESCRIPTION = 0;
	parameter [7:0] SOURCE_DEVICE_INFORMATION = 0;
	output wire [23:0] header;
	output wire [223:0] sub;
	localparam [4:0] LENGTH = 5'd25;
	localparam [7:0] VERSION = 8'd1;
	localparam [6:0] TYPE = 7'd3;
	assign header = {3'b000, LENGTH, VERSION, 1'b1, TYPE};
	wire [7:0] packet_bytes [27:0];
	assign packet_bytes[0] = 8'd1 + ~(((((((((((((((((((((((((((header[23:16] + header[15:8]) + header[7:0]) + packet_bytes[25]) + packet_bytes[24]) + packet_bytes[23]) + packet_bytes[22]) + packet_bytes[21]) + packet_bytes[20]) + packet_bytes[19]) + packet_bytes[18]) + packet_bytes[17]) + packet_bytes[16]) + packet_bytes[15]) + packet_bytes[14]) + packet_bytes[13]) + packet_bytes[12]) + packet_bytes[11]) + packet_bytes[10]) + packet_bytes[9]) + packet_bytes[8]) + packet_bytes[7]) + packet_bytes[6]) + packet_bytes[5]) + packet_bytes[4]) + packet_bytes[3]) + packet_bytes[2]) + packet_bytes[1]);
	wire signed [7:0] vendor_name [0:7];
	wire signed [7:0] product_description [0:15];
	genvar _gv_i_7;
	generate
		for (_gv_i_7 = 0; _gv_i_7 < 8; _gv_i_7 = _gv_i_7 + 1) begin : vendor_to_bytes
			localparam i = _gv_i_7;
			assign vendor_name[i] = VENDOR_NAME[((8 - i) * 8) - 1:(7 - i) * 8];
		end
		for (_gv_i_7 = 0; _gv_i_7 < 16; _gv_i_7 = _gv_i_7 + 1) begin : product_to_bytes
			localparam i = _gv_i_7;
			assign product_description[i] = PRODUCT_DESCRIPTION[((16 - i) * 8) - 1:(15 - i) * 8];
		end
		for (_gv_i_7 = 1; _gv_i_7 < 9; _gv_i_7 = _gv_i_7 + 1) begin : pb_vendor
			localparam i = _gv_i_7;
			assign packet_bytes[i] = (vendor_name[i - 1] == 8'h30 ? 8'h00 : vendor_name[i - 1]);
		end
		for (_gv_i_7 = 9; _gv_i_7 < LENGTH; _gv_i_7 = _gv_i_7 + 1) begin : pb_product
			localparam i = _gv_i_7;
			assign packet_bytes[i] = (product_description[i - 9] == 8'h30 ? 8'h00 : product_description[i - 9]);
		end
	endgenerate
	assign packet_bytes[LENGTH] = SOURCE_DEVICE_INFORMATION;
	generate
		for (_gv_i_7 = 26; _gv_i_7 < 28; _gv_i_7 = _gv_i_7 + 1) begin : pb_reserved
			localparam i = _gv_i_7;
			assign packet_bytes[i] = 8'd0;
		end
		for (_gv_i_7 = 0; _gv_i_7 < 4; _gv_i_7 = _gv_i_7 + 1) begin : pb_to_sub
			localparam i = _gv_i_7;
			assign sub[i * 56+:56] = {packet_bytes[6 + (i * 7)], packet_bytes[5 + (i * 7)], packet_bytes[4 + (i * 7)], packet_bytes[3 + (i * 7)], packet_bytes[2 + (i * 7)], packet_bytes[1 + (i * 7)], packet_bytes[0 + (i * 7)]};
		end
	endgenerate
endmodule
module tmds_channel (
	clk_pixel,
	video_data,
	data_island_data,
	control_data,
	mode,
	tmds
);
	reg _sv2v_0;
	parameter signed [31:0] CN = 0;
	input wire clk_pixel;
	input wire [7:0] video_data;
	input wire [3:0] data_island_data;
	input wire [1:0] control_data;
	input wire [2:0] mode;
	output reg [9:0] tmds = 10'b1101010100;
	reg signed [4:0] acc = 5'sd0;
	reg [8:0] q_m;
	reg [9:0] q_out;
	wire [9:0] video_coding;
	assign video_coding = q_out;
	reg [3:0] N1D;
	reg signed [4:0] N1q_m07;
	reg signed [4:0] N0q_m07;
	always @(*) begin
		if (_sv2v_0)
			;
		N1D = ((((((video_data[0] + video_data[1]) + video_data[2]) + video_data[3]) + video_data[4]) + video_data[5]) + video_data[6]) + video_data[7];
		case (((((((q_m[0] + q_m[1]) + q_m[2]) + q_m[3]) + q_m[4]) + q_m[5]) + q_m[6]) + q_m[7])
			4'b0000: N1q_m07 = 5'sd0;
			4'b0001: N1q_m07 = 5'sd1;
			4'b0010: N1q_m07 = 5'sd2;
			4'b0011: N1q_m07 = 5'sd3;
			4'b0100: N1q_m07 = 5'sd4;
			4'b0101: N1q_m07 = 5'sd5;
			4'b0110: N1q_m07 = 5'sd6;
			4'b0111: N1q_m07 = 5'sd7;
			4'b1000: N1q_m07 = 5'sd8;
			default: N1q_m07 = 5'sd0;
		endcase
		N0q_m07 = 5'sd8 - N1q_m07;
	end
	reg signed [4:0] acc_add;
	integer i;
	always @(*) begin
		if (_sv2v_0)
			;
		if ((N1D > 4'd4) || ((N1D == 4'd4) && (video_data[0] == 1'd0))) begin
			q_m[0] = video_data[0];
			for (i = 0; i < 7; i = i + 1)
				q_m[i + 1] = q_m[i] ~^ video_data[i + 1];
			q_m[8] = 1'b0;
		end
		else begin
			q_m[0] = video_data[0];
			for (i = 0; i < 7; i = i + 1)
				q_m[i + 1] = q_m[i] ^ video_data[i + 1];
			q_m[8] = 1'b1;
		end
		if ((acc == 5'sd0) || (N1q_m07 == N0q_m07)) begin
			if (q_m[8]) begin
				acc_add = N1q_m07 - N0q_m07;
				q_out = {~q_m[8], q_m[8], q_m[7:0]};
			end
			else begin
				acc_add = N0q_m07 - N1q_m07;
				q_out = {~q_m[8], q_m[8], ~q_m[7:0]};
			end
		end
		else if (((acc > 5'sd0) && (N1q_m07 > N0q_m07)) || ((acc < 5'sd0) && (N1q_m07 < N0q_m07))) begin
			q_out = {1'b1, q_m[8], ~q_m[7:0]};
			acc_add = (N0q_m07 - N1q_m07) + (q_m[8] ? 5'sd2 : 5'sd0);
		end
		else begin
			q_out = {1'b0, q_m[8], q_m[7:0]};
			acc_add = (N1q_m07 - N0q_m07) - (~q_m[8] ? 5'sd2 : 5'sd0);
		end
	end
	always @(posedge clk_pixel) acc <= (mode != 3'd1 ? 5'sd0 : acc + acc_add);
	reg [9:0] control_coding;
	always @(*) begin
		if (_sv2v_0)
			;
		(* full_case, parallel_case *)
		case (control_data)
			2'b00: control_coding = 10'b1101010100;
			2'b01: control_coding = 10'b0010101011;
			2'b10: control_coding = 10'b0101010100;
			2'b11: control_coding = 10'b1010101011;
		endcase
	end
	reg [9:0] terc4_coding;
	always @(*) begin
		if (_sv2v_0)
			;
		(* full_case, parallel_case *)
		case (data_island_data)
			4'b0000: terc4_coding = 10'b1010011100;
			4'b0001: terc4_coding = 10'b1001100011;
			4'b0010: terc4_coding = 10'b1011100100;
			4'b0011: terc4_coding = 10'b1011100010;
			4'b0100: terc4_coding = 10'b0101110001;
			4'b0101: terc4_coding = 10'b0100011110;
			4'b0110: terc4_coding = 10'b0110001110;
			4'b0111: terc4_coding = 10'b0100111100;
			4'b1000: terc4_coding = 10'b1011001100;
			4'b1001: terc4_coding = 10'b0100111001;
			4'b1010: terc4_coding = 10'b0110011100;
			4'b1011: terc4_coding = 10'b1011000110;
			4'b1100: terc4_coding = 10'b1010001110;
			4'b1101: terc4_coding = 10'b1001110001;
			4'b1110: terc4_coding = 10'b0101100011;
			4'b1111: terc4_coding = 10'b1011000011;
		endcase
	end
	wire [9:0] video_guard_band;
	generate
		if ((CN == 0) || (CN == 2)) begin : genblk1
			assign video_guard_band = 10'b1011001100;
		end
		else begin : genblk1
			assign video_guard_band = 10'b0100110011;
		end
	endgenerate
	wire [9:0] data_guard_band;
	generate
		if ((CN == 1) || (CN == 2)) begin : genblk2
			assign data_guard_band = 10'b0100110011;
		end
		else begin : genblk2
			assign data_guard_band = (control_data == 2'b00 ? 10'b1010001110 : (control_data == 2'b01 ? 10'b1001110001 : (control_data == 2'b10 ? 10'b0101100011 : 10'b1011000011)));
		end
	endgenerate
	always @(posedge clk_pixel)
		case (mode)
			3'd0: tmds <= control_coding;
			3'd1: tmds <= video_coding;
			3'd2: tmds <= video_guard_band;
			3'd3: tmds <= terc4_coding;
			3'd4: tmds <= data_guard_band;
		endcase
	initial _sv2v_0 = 0;
endmodule
module top (
	clk,
	resetn,
	user,
	btn_up,
	btn_down,
	btn_left,
	btn_right,
	btn_coin,
	btn_start,
	tmds_clk_n,
	tmds_clk_p,
	tmds_d_n,
	tmds_d_p
);
	input clk;
	input resetn;
	input user;
	input btn_up;
	input btn_down;
	input btn_left;
	input btn_right;
	input btn_coin;
	input btn_start;
	output wire tmds_clk_n;
	output wire tmds_clk_p;
	output wire [2:0] tmds_d_n;
	output wire [2:0] tmds_d_p;
	wire [2:0] tmds;
	wire tmds_clock;
	wire clk_pixel;
	wire clk_pixel_x5;
	wire sys_resetn;
	wire pll_lock;
	pll_240m pll_inst(
		.clkout(clk_pixel_x5),
		.lock(pll_lock),
		.clkin(clk)
	);
	Gowin_CLKDIV clk_div_5(
		.clkout(clk_pixel),
		.hclkin(clk_pixel_x5),
		.resetn(pll_lock)
	);
	reg clk_audio;
	reg [8:0] aclk_cnt;
	always @(posedge clk_pixel)
		if (aclk_cnt < 9'd497)
			aclk_cnt <= aclk_cnt + 9'd1;
		else begin
			aclk_cnt <= 9'd0;
			clk_audio <= ~clk_audio;
		end
	ELVDS_OBUF tmds_bufds[3:0](
		.I({tmds_clock, tmds}),
		.O({tmds_clk_p, tmds_d_p}),
		.OB({tmds_clk_n, tmds_d_n})
	);
	wire [23:0] rgb;
	wire [10:0] cx;
	wire [9:0] cy;
	reg [9:0] audio_out_register;
	wire [15:0] audio_out = {{2 {audio_out_register[9]}}, audio_out_register, 4'b0000};
	hdmi #(
		.VIDEO_ID_CODE(65),
		.VIDEO_WIDE(1),
		.VIDEO_REFRESH_RATE(60),
		.AUDIO_RATE(48000),
		.AUDIO_BIT_WIDTH(16),
		.VENDOR_NAME({"MiST", 32'd0}),
		.PRODUCT_DESCRIPTION({"Pacman Arcade", 24'd0})
	) hdmi(
		.clk_pixel_x5(clk_pixel_x5),
		.clk_pixel(clk_pixel),
		.clk_audio(clk_audio),
		.reset(!sys_resetn),
		.rgb(rgb),
		.audio_sample_word({audio_out, audio_out}),
		.tmds(tmds),
		.tmds_clock(tmds_clock),
		.cx(cx),
		.cy(cy)
	);
	wire [7:0] cpu_dout;
	wire [15:0] addr;
	wire rd_n;
	wire wr_n;
	wire cpu_en;
	wire mem_en;
	timing timing_i(
		.clk(clk_pixel),
		.reset_n(sys_resetn),
		.cpu_en(cpu_en),
		.mem_en(mem_en)
	);
	wire [7:0] dout_rom_6e;
	pacman_6e pacman_6e_inst(
		.clk(clk_pixel),
		.reset(!sys_resetn),
		.ce(mem_en),
		.oce(1'b1),
		.ad(addr[11:0]),
		.dout(dout_rom_6e)
	);
	wire [7:0] dout_rom_6f;
	pacman_6f pacman_6f_inst(
		.clk(clk_pixel),
		.reset(!sys_resetn),
		.ce(mem_en),
		.oce(1'b1),
		.ad(addr[11:0]),
		.dout(dout_rom_6f)
	);
	wire [7:0] dout_rom_6h;
	pacman_6h pacman_6h_inst(
		.clk(clk_pixel),
		.reset(!sys_resetn),
		.ce(mem_en),
		.oce(1'b1),
		.ad(addr[11:0]),
		.dout(dout_rom_6h)
	);
	wire [7:0] dout_rom_6j;
	pacman_6j pacman_6j_inst(
		.clk(clk_pixel),
		.reset(!sys_resetn),
		.ce(mem_en),
		.oce(1'b1),
		.ad(addr[11:0]),
		.dout(dout_rom_6j)
	);
	wire [7:0] buttons_a = {2'b11, btn_coin, 1'b1, btn_down, btn_right, btn_left, btn_up};
	wire [7:0] buttons_b = {2'b11, btn_start, 5'b11111};
	wire [7:0] dout_ports = (addr[11:0] == 12'h000 ? buttons_a : (addr[11:0] == 12'h040 ? buttons_b : (addr[11:0] == 12'h080 ? 8'b11001001 : 8'hff)));
	wire [7:0] dout_ram;
	wire iorq_n;
	reg [7:0] irq_vector;
	wire m1_n;
	wire [7:0] cpu_din = (!m1_n && !iorq_n ? irq_vector : (addr[14:12] == 3'h0 ? dout_rom_6e : (addr[14:12] == 3'h1 ? dout_rom_6f : (addr[14:12] == 3'h2 ? dout_rom_6h : (addr[14:12] == 3'h3 ? dout_rom_6j : (addr[14:12] == 3'h4 ? dout_ram : (addr[14:12] == 3'h5 ? dout_ports : 8'hff)))))));
	reg [3:0] audio_regs [31:0];
	wire mreq_n;
	always @(posedge clk_pixel)
		if (!sys_resetn) begin
			audio_regs[21] <= 4'd0;
			audio_regs[26] <= 4'd0;
			audio_regs[31] <= 4'd0;
		end
		else if (((mem_en && (wr_n == 1'b0)) && (mreq_n == 1'b0)) && (addr[14:5] == 10'b1010000010))
			audio_regs[addr[4:0]] <= cpu_dout[3:0];
	reg [1:0] audio_ch;
	wire [4:0] ch_offset = audio_ch * 5'd5;
	wire [3:0] wave = audio_regs[5'h05 + ch_offset];
	wire [3:0] volume = audio_regs[5'h15 + ch_offset];
	wire [19:0] freq = {audio_regs[5'h14 + ch_offset], audio_regs[5'h13 + ch_offset], audio_regs[5'h12 + ch_offset], audio_regs[5'h11 + ch_offset], (audio_ch == 2'd0 ? audio_regs[5'h10] : 4'h0)};
	reg [19:0] audio_ch_cnt [2:0];
	wire [7:0] wave_addr = {wave[2:0], audio_ch_cnt[audio_ch][17:13]};
	wire [3:0] dout_wave_a;
	wire [3:0] dout_wave_b;
	wire [7:0] dout_wave = volume * ((wave[3] ? dout_wave_b : dout_wave_a) - 4'd7);
	reg audio_rd;
	prom_82s126_1m prom_82s126_1m_inst(
		.clk(clk_pixel),
		.reset(!sys_resetn),
		.ce(audio_rd),
		.oce(1'b1),
		.ad(wave_addr),
		.dout(dout_wave_a)
	);
	prom_82s126_3m prom_82s126_3m_inst(
		.clk(clk_pixel),
		.reset(!sys_resetn),
		.ce(audio_rd),
		.oce(1'b1),
		.ad(wave_addr),
		.dout(dout_wave_b)
	);
	reg [9:0] audio_cnt;
	reg [9:0] audio_sum;
	always @(posedge clk_pixel)
		if (!sys_resetn) begin
			audio_cnt <= 10'd0;
			audio_ch <= 2'd0;
			audio_sum <= 10'd0;
			audio_rd <= 1'b0;
		end
		else begin
			audio_rd <= 1'b0;
			if (audio_cnt == 332)
				audio_rd <= 1'b1;
			if (audio_cnt < 664)
				audio_cnt <= audio_cnt + 10'd1;
			else begin
				audio_cnt <= 10'd0;
				audio_ch_cnt[audio_ch] <= audio_ch_cnt[audio_ch] + freq;
				if (audio_ch < 2'd2) begin
					audio_ch <= audio_ch + 2'd1;
					audio_sum <= audio_sum + {{2 {dout_wave[7]}}, dout_wave};
				end
				else begin
					audio_ch <= 2'd0;
					audio_out_register <= audio_sum;
					audio_sum <= {{2 {dout_wave[7]}}, dout_wave};
				end
			end
		end
	wire vbi;
	reg int_n;
	reg int_en;
	always @(posedge clk_pixel)
		if (!sys_resetn) begin
			irq_vector <= 0;
			int_n <= 1'b1;
			int_en <= 0;
		end
		else begin
			if (mem_en) begin
				if (wr_n == 1'b0) begin
					if ((iorq_n == 1'b0) && (m1_n == 1'b1))
						irq_vector <= cpu_dout;
					if ((mreq_n == 1'b0) && (addr[14:0] == 15'h5000))
						int_en <= cpu_dout[0];
				end
				if (!m1_n && !iorq_n)
					int_n <= 1'b1;
			end
			if (vbi)
				int_n <= 1'b0;
		end
	T80sed t80sed(
		.CLK_n(clk_pixel),
		.RESET_n(sys_resetn),
		.CLKEN(cpu_en),
		.WAIT_n(1'b1),
		.INT_n(int_n || !int_en),
		.NMI_n(1'b1),
		.BUSRQ_n(1'b1),
		.M1_n(m1_n),
		.MREQ_n(mreq_n),
		.IORQ_n(iorq_n),
		.RD_n(rd_n),
		.WR_n(wr_n),
		.A(addr),
		.DI(cpu_din),
		.DO(cpu_dout)
	);
	Reset_Sync u_Reset_Sync(
		.resetn(sys_resetn),
		.ext_reset(resetn & pll_lock),
		.clk(clk_pixel)
	);
	video #(.VIDEO_WIDE(1)) video_inst(
		.clk(clk_pixel),
		.resetn(sys_resetn),
		.mem_en((mem_en && !mreq_n) && (addr[14:12] == 3'h4)),
		.mem_spr_en((mem_en && !mreq_n) && (addr[14:4] == 11'h506)),
		.mem_addr(addr[11:0]),
		.mem_din(cpu_dout),
		.mem_dout(dout_ram),
		.mem_wr_n(wr_n),
		.vbi(vbi),
		.r(rgb[23:16]),
		.g(rgb[15:8]),
		.b(rgb[7:0]),
		.x(cx),
		.y(cy)
	);
endmodule
module timing (
	clk,
	reset_n,
	cpu_en,
	mem_en
);
	input clk;
	input reset_n;
	output reg cpu_en;
	output reg mem_en;
	reg [31:0] clk_cnt = 0;
	wire [31:0] base = 15;
	always @(posedge clk or negedge reset_n)
		if (~reset_n) begin
			clk_cnt <= 16'b0000000000000000;
			cpu_en <= 1'b0;
			mem_en <= 1'b0;
		end
		else begin
			cpu_en <= 1'b0;
			mem_en <= 1'b0;
			if (clk_cnt == (base / 2))
				mem_en <= 1'b1;
			if (clk_cnt < base)
				clk_cnt <= clk_cnt + 1;
			else begin
				clk_cnt <= 16'b0000000000000000;
				cpu_en <= 1'b1;
			end
		end
endmodule
module Reset_Sync (
	clk,
	ext_reset,
	resetn
);
	input clk;
	input ext_reset;
	output wire resetn;
	reg [15:0] reset_cnt = 0;
	always @(posedge clk or negedge ext_reset)
		if (~ext_reset)
			reset_cnt <= 16'b0000000000000000;
		else
			reset_cnt <= reset_cnt + !resetn;
	assign resetn = &reset_cnt;
endmodule
