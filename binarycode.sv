module binarycode #(parameter N = 4)(
    input  logic [N-1:0] graycode,
    output logic [N-1:0] binarycode
);
always_comb begin
    binarycode[N-1] = graycode[N-1];
    for (int i = N-2; i >= 0; i--) begin
        binarycode[i] = binarycode[i+1] ^ graycode[i];
    end
end
endmodule