module stimulus;

 reg [3:0] x, y, z;
 wire [3:0] d, b;

 
 Sub4bits s4( x, y, z, d, b);
 
 initial begin
   x = 4'b0000;
   
   y = 4'b0000;
   
   z = 0;
   #5
   x = 4'b0111;
   y = 4'b0110;
   z = 4'b0000;
   #5
   x = 4'b0100;
   y = 4'b0011;
   z = 4'b0000;
   #5
   x = 4'b0011;
   y = 4'b0110;
   z = 4'b0000;
   #5
   x = 4'b1101;
   y = 4'b0101;
   z = 4'b0000;
   
 end
 
 
 initial begin
	$monitor($time, " Output x = %b, y = %b, z = %b d = %b, b = %b",  x, y, z, d, b);


 end

endmodule