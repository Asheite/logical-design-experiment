module alu( clk, sel, a, b, c, result );
 input clk;
 input [2:0] sel;
 input [3:0] a, b, c;
 
 output reg [4:0] result;

 always @( posedge clk ) begin
  if ( sel == 3'b000 ) begin
   if ( a > b && a > c ) begin
    result = a;
   end
   else if ( b > a && b > c ) begin
    result = b;
   end
   else begin
    result = c;
   end
  end
  else if ( sel == 3'b001 ) begin
   result = a + b;
  end
  else if ( sel == 3'b010 ) begin
   result = a - b;
  end
  else if ( sel == 3'b011 ) begin
   result = a / b;
  end
  else if ( sel == 3'b100 ) begin
   result = a % b;
  end
  else if ( sel == 3'b101 ) begin
   result = a << 1;
  end
  else if ( sel == 3'b110 ) begin
   result = a >> 1;
  end
  else if ( sel == 3'b111 ) begin
   if ( a > b ) begin
    result = 5'b00001;
   end
   else begin
    result = 5'b0;
   end
  end
 end
endmodule