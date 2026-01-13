module prom_82s123_7f (dout, clk, oce, ce, reset, ad);
    output [7:0] dout;
    input clk, oce, ce, reset;
    input [4:0] ad;

    reg [7:0] data_out;
    assign dout = data_out;

    always @(*) begin
        case(ad)
            5'd0: data_out = 8'h00; 5'd1: data_out = 8'h07; 5'd2: data_out = 8'h66; 5'd3: data_out = 8'hEF;
            5'd4: data_out = 8'h00; 5'd5: data_out = 8'hF8; 5'd6: data_out = 8'hEA; 5'd7: data_out = 8'h6F;
            5'd8: data_out = 8'h00; 5'd9: data_out = 8'h3F; 5'd10: data_out = 8'h00; 5'd11: data_out = 8'hC9;
            5'd12: data_out = 8'h38; 5'd13: data_out = 8'hAA; 5'd14: data_out = 8'hAF; 5'd15: data_out = 8'hF6;
            default: data_out = 8'h00;
        endcase
    end
endmodule