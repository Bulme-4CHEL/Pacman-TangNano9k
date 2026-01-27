
module ram (
    output reg [7:0] douta,
    output reg [7:0] doutb,
    input clka,
    input ocea,
    input cea,
    input reseta,
    input wrea,
    input clkb,
    input oceb,
    input ceb,
    input resetb,
    input wreb,   // should be 0 for port B in this design, but we implement it generic
    input [11:0] ada,
    input [7:0] dina,
    input [11:0] adb,
    input [7:0] dinb
);

    // 4096 bytes of memory (12-bit address)
    reg [7:0] mem [0:4095];

    integer i;
    initial begin
        for (i = 0; i < 4096; i = i + 1) begin
            mem[i] = 8'h00;
        end
    end

    // Port A
    always @(posedge clka) begin
        if (cea) begin
            if (wrea) begin
                mem[ada] <= dina;
                douta <= dina; // Read-during-write behavior (check if needed by Z80, usually passthrough or old data)
                               // Gowin DPB in READ_MODE0=0/WRITE_MODE0=0 usually gives old data or defined behavior.
                               // For Z80 T80 implementation, usually we want the data we just wrote or don't care.
                               // Let's assume write-first or just update memory.
                               // Actually, standard block RAM read behavior is latched.
            end else begin
                douta <= mem[ada];
            end
        end
    end

    // Port B
    always @(posedge clkb) begin
        if (ceb) begin
            if (wreb) begin
                mem[adb] <= dinb;
                doutb <= dinb;
            end else begin
                doutb <= mem[adb];
            end
        end
    end

endmodule
