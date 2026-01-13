module prom_82s126_3m (dout, clk, oce, ce, reset, ad);
    output [3:0] dout;
    input clk, oce, ce, reset;
    input [7:0] ad;

    reg [3:0] data_out;
    assign dout = data_out;

    always @(*) begin
        case(ad)
            // 0 - 63 Pattern
            8'd0: data_out = 4'hF; 8'd1: data_out = 4'hD;
            8'd2: data_out = 4'hF; 8'd3: data_out = 4'hF; 8'd4: data_out = 4'hF;
            8'd5: data_out = 4'hD;
            8'd6: data_out = 4'hF; 8'd7: data_out = 4'hF; 8'd8: data_out = 4'hF;
            8'd9: data_out = 4'hD;
            8'd10: data_out = 4'hF; 8'd11: data_out = 4'hF; 8'd12: data_out = 4'hF;
            8'd13: data_out = 4'hD;
            8'd14: data_out = 4'hF; 8'd15: data_out = 4'hF; 8'd16: data_out = 4'hF;
            8'd17: data_out = 4'hD;
            8'd18: data_out = 4'hF; 8'd19: data_out = 4'hF; 8'd20: data_out = 4'hF;
            8'd21: data_out = 4'hD;
            8'd22: data_out = 4'hF; 8'd23: data_out = 4'hF; 8'd24: data_out = 4'hF;
            8'd25: data_out = 4'hD;
            8'd26: data_out = 4'hF; 8'd27: data_out = 4'hF; 8'd28: data_out = 4'hF;
            8'd29: data_out = 4'hD;
            8'd30: data_out = 4'hF; 8'd31: data_out = 4'hF; 8'd32: data_out = 4'hF;
            8'd33: data_out = 4'hD;
            8'd34: data_out = 4'hF; 8'd35: data_out = 4'hF; 8'd36: data_out = 4'hF;
            8'd37: data_out = 4'hD;
            8'd38: data_out = 4'hF; 8'd39: data_out = 4'hF; 8'd40: data_out = 4'hF;
            8'd41: data_out = 4'hD;
            8'd42: data_out = 4'hF; 8'd43: data_out = 4'hF; 8'd44: data_out = 4'hF;
            8'd45: data_out = 4'hD;
            8'd46: data_out = 4'hF; 8'd47: data_out = 4'hF; 8'd48: data_out = 4'hF;
            8'd49: data_out = 4'hD;
            8'd50: data_out = 4'hF; 8'd51: data_out = 4'hF; 8'd52: data_out = 4'hF;
            8'd53: data_out = 4'hD;
            8'd54: data_out = 4'hF; 8'd55: data_out = 4'hF; 8'd56: data_out = 4'hF;
            8'd57: data_out = 4'hD;
            8'd58: data_out = 4'hF; 8'd59: data_out = 4'hF; 8'd60: data_out = 4'hF;
            8'd61: data_out = 4'hD;
            8'd62: data_out = 4'hF; 8'd63: data_out = 4'hF;
            // 64 - 127
            8'd64: data_out = 4'h7; 8'd65: data_out = 4'hF; 8'd66: data_out = 4'hE; 8'd67: data_out = 4'hD;
            8'd68: data_out = 4'hF; 8'd69: data_out = 4'hF; 8'd70: data_out = 4'hE; 8'd71: data_out = 4'hD;
            8'd72: data_out = 4'hF; 8'd73: data_out = 4'hF; 8'd74: data_out = 4'hE; 8'd75: data_out = 4'hD;
            8'd76: data_out = 4'hF; 8'd77: data_out = 4'hF; 8'd78: data_out = 4'hE; 8'd79: data_out = 4'hD;
            8'd80: data_out = 4'hF; 8'd81: data_out = 4'hF; 8'd82: data_out = 4'hE; 8'd83: data_out = 4'hD;
            8'd84: data_out = 4'hF; 8'd85: data_out = 4'hF; 8'd86: data_out = 4'hF; 8'd87: data_out = 4'hB;
            8'd88: data_out = 4'h7; 8'd89: data_out = 4'hF; 8'd90: data_out = 4'hE; 8'd91: data_out = 4'hD;
            8'd92: data_out = 4'hF; 8'd93: data_out = 4'hF; 8'd94: data_out = 4'hE; 8'd95: data_out = 4'hD;
            8'd96: data_out = 4'hF; 8'd97: data_out = 4'hF; 8'd98: data_out = 4'hE; 8'd99: data_out = 4'hD;
            8'd100: data_out = 4'hF; 8'd101: data_out = 4'hF; 8'd102: data_out = 4'hE; 8'd103: data_out = 4'hD;
            8'd104: data_out = 4'hF; 8'd105: data_out = 4'hF; 8'd106: data_out = 4'hF; 8'd107: data_out = 4'hB;
            8'd108: data_out = 4'h7; 8'd109: data_out = 4'hF; 8'd110: data_out = 4'hE; 8'd111: data_out = 4'hD;
            8'd112: data_out = 4'hF; 8'd113: data_out = 4'hF; 8'd114: data_out = 4'hE; 8'd115: data_out = 4'hD;
            8'd116: data_out = 4'hF; 8'd117: data_out = 4'hF; 8'd118: data_out = 4'hE; 8'd119: data_out = 4'hD;
            8'd120: data_out = 4'hF; 8'd121: data_out = 4'hF; 8'd122: data_out = 4'hE; 8'd123: data_out = 4'hD;
            8'd124: data_out = 4'hF; 8'd125: data_out = 4'hF; 8'd126: data_out = 4'hF; 8'd127: data_out = 4'hB;
            // Der Rest ist 0
            default: data_out = 4'd0;
        endcase
    end
endmodule