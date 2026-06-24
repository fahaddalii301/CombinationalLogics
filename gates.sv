module gates(
    input logic a,b,
    output logic and_out, or_out, nor_out, nand_out, xor_out, xnor_out);
always_comb begin
    and_out = a&b;
    or_out = a|b;
    nand_out = ~(a&b);
    nor_out = ~(a|b);
    xor_out = a^b;
    xnor_out = ~(a^b);
end
endmodule