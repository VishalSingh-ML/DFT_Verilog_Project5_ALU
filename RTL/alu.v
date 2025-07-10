module alu (
    input [7:0] A,
    input [7:0] B,
    input [2:0] SEL,
    output reg [7:0] RESULT,
    output reg ZERO
);

always @(*) begin
    case (SEL)
        3'b000: RESULT = A + B;         // ADD
        3'b001: RESULT = A - B;         // SUB
        3'b010: RESULT = A & B;         // AND
        3'b011: RESULT = A | B;         // OR
        3'b100: RESULT = A ^ B;         // XOR
        3'b101: RESULT = (A == B) ? 8'd1 : 8'd0; // CMP
        3'b110: RESULT = A * B;         // MUL
        3'b111: RESULT = 8'd0;          // NOP
        default: RESULT = 8'd0;
    endcase
    
    ZERO = (RESULT == 0) ? 1'b1 : 1'b0;
end

endmodule
