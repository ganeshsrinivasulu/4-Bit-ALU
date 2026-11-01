`timescale 1ns / 1ps

module tb_alu_4bit;

reg [3:0] A, B;
reg [1:0] Sel;
wire [3:0] Result;
wire Carry;

alu_4bit uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin
    A = 5; B = 3; Sel = 2'b00;
    #10;

    A = 9; B = 4; Sel = 2'b01;
    #10;

    A = 6; B = 3; Sel = 2'b10;
    #10;

    A = 6; B = 3; Sel = 2'b11;
    #10;

    $finish;
end

endmodule
