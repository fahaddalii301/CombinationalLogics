module barrel_shifter(
    input logic clk,
    input logic [2:0] sel,
    input logic [7:0] d,
    output logic [7:0] q
);
always_comb begin 
    case(sel)
        3'b000: q = d;
        3'b001: q = {d[0],d[7:1]};
        3'b010: q = {d[1:0],d[7:2]};
        3'b011: q = {d[2:0],d[7:3]};
        3'b100: q = {d[3:0],d[7:4]};
        3'b101: q = {d[4:0],d[7:5]};
        3'b110: q = {d[5:0],d[7:6]};
        3'b111: q = {d[6:0],d[7]};
        default: q = 8'b0;
        endcase
    end 
endmodule
    