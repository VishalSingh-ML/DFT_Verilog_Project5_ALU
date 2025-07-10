`timescale 1ns/1ps
module alu_tb;

reg [7:0] A, B;
reg [2:0] SEL;
wire [7:0] RESULT;
wire ZERO;

alu uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .RESULT(RESULT),
    .ZERO(ZERO)
);

initial begin
    $dumpfile("alu_waveform.vcd");
    $dumpvars(0, alu_tb);

    A = 8'd10; B = 8'd5;

    SEL = 3'b000; #10; // ADD
    SEL = 3'b001; #10; // SUB
    SEL = 3'b010; #10; // AND
    SEL = 3'b011; #10; // OR
    SEL = 3'b100; #10; // XOR
    SEL = 3'b101; #10; // CMP
    SEL = 3'b110; #10; // MUL
    SEL = 3'b111; #10; // NOP

    $finish;
end

endmodule
