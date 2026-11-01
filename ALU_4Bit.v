module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [1:0] Sel,
    output reg [3:0] Result,
    output reg Carry
);

always @(*) begin
    Result = 0;
    Carry = 0;

    case (Sel)
        2'b00: {Carry, Result} = A + B;
        2'b01: Result = A - B;
        2'b10: Result = A & B;
        2'b11: Result = A | B;
    endcase
end

endmodule
