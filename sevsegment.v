module sevsegment(
    input [1:0] c,
    output reg [6:0] out
);

always @(*) begin
    case(c)
        2'b00: out = 7'b0111101;
        2'b01: out = 7'b1001111;
        2'b10: out = 7'b1111110;
        2'b11: out = 7'b1111111;
        default: out = 7'b0000000;
    endcase
end

endmodule
