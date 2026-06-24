module alu(
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic [1:0] sel,
    output logic [3:0] y
);
always_comb begin
    case(sel)
        2'b00: y = a & b;
        2'b01: y = a | b;
        2'b10: y = a + b;
        2'b11: y = a - b;
        default: y = 4'b0000;
    endcase
end
endmodule