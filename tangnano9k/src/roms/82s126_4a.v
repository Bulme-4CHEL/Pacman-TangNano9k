module prom_82s126_4a (dout, clk, oce, ce, reset, ad);
    output [3:0] dout;
    input clk, oce, ce, reset;
    input [7:0] ad;

    reg [3:0] data_out;
    assign dout = data_out;

    always @(*) begin
        case(ad)
            // Block 0
            8'd5: data_out = 4'hF; 8'd6: data_out = 4'hB; 8'd7: data_out = 4'h1;
            8'd13: data_out = 4'hF; 8'd14: data_out = 4'hB; 8'd15: data_out = 4'h3;
            8'd21: data_out = 4'hF; 8'd22: data_out = 4'hB; 8'd23: data_out = 4'h5;
            8'd29: data_out = 4'hF; 8'd30: data_out = 4'hB; 8'd31: data_out = 4'h7;
            8'd37: data_out = 4'hB; 8'd38: data_out = 4'h1; 8'd39: data_out = 4'h9;
            8'd57: data_out = 4'hF; 8'd59: data_out = 4'hE; 8'd61: data_out = 4'h1; 8'd62: data_out = 4'hC; 8'd63: data_out = 4'hF;
            // Block 1
            8'd65: data_out = 4'hE; 8'd67: data_out = 4'hB; 8'd69: data_out = 4'hC; 8'd70: data_out = 4'hB; 8'd71: data_out = 4'hE;
            8'd73: data_out = 4'hC; 8'd74: data_out = 4'hF; 8'd75: data_out = 4'h1;
            8'd81: data_out = 4'h1; 8'd82: data_out = 4'h2; 8'd83: data_out = 4'hF; 8'd85: data_out = 4'h7; 8'd86: data_out = 4'hC; 8'd87: data_out = 4'h2;
            8'd89: data_out = 4'h9; 8'd90: data_out = 4'h6; 8'd91: data_out = 4'hF; 8'd93: data_out = 4'hD; 8'd94: data_out = 4'hC; 8'd95: data_out = 4'hF;
            8'd97: data_out = 4'h5; 8'd98: data_out = 4'h3; 8'd99: data_out = 4'h9; 8'd101: data_out = 4'hF; 8'd102: data_out = 4'hB; 8'd104: data_out = 4'hE; 8'd106: data_out = 4'hB; 8'd108: data_out = 4'hE; 8'd110: data_out = 4'hB;
            8'd117: data_out = 4'hF; 8'd118: data_out = 4'hE; 8'd119: data_out = 4'h1; 8'd121: data_out = 4'hF; 8'd122: data_out = 4'hB; 8'd123: data_out = 4'hE; 8'd125: data_out = 4'hE; 8'd127: data_out = 4'hF;
            
            default: data_out = 4'd0;
        endcase
    end
endmodule