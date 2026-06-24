module graycode #(parameter N = 4)(
    input  logic [N-1:0] binary,
    output logic [N-1:0] graycode
);

always_comb begin
    graycode[N-1] = binary[N-1];

    for (int i = N-2; i >= 0; i--)
        graycode[i] = binary[i+1] ^ binary[i];
end

endmodule