/* Register set implementation for RudolV
 *
 * with grubby bit
 * for BRAM with preinit for x0
 */

module RegisterSet(
    input clk, 
    input we,
    input [5:0] wa,
    input [31:0] wd,
    input wg,
    input [5:0] ra1,
    input [5:0] ra2,
    output reg [31:0] rd1,
    output reg rg1,
    output reg [31:0] rd2,
    output reg rg2
);
    reg [31:0] regs [0:63];
    reg grubby[0:63];

    initial begin
        regs[0] <= 0;
    end

    always @(posedge clk) begin
        if (we) regs[wa] <= wd;
        rd1 <= regs[ra1];
        rd2 <= regs[ra2];
    end

    always @(posedge clk) begin
        if (we) grubby[wa] <= wg;
        rg1 <= grubby[ra1];
        rg2 <= grubby[ra2];
    end

endmodule



