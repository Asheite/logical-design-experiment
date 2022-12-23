module test;
reg clk;
reg [2:0] sel;
reg [3:0] a, b, c;
wire [4:0] result;

alu a1( clk, sel, a, b, c, result );

initial clk = 1'b0;
always #5 clk = ~clk;

initial begin
 a = 4'b0101;
 b = 4'b0111;
 c = 4'b0001;
 #5
 sel = 3'b000;
 #10
 sel = 3'b001;
 #10
 sel = 3'b010;
 #10
 sel = 3'b011;
 #10
 sel = 3'b100;
 #10
 sel = 3'b101;
 #10
 sel = 3'b110;
 #10
 sel = 3'b111;
end
endmodule