module FullSubtractor( x, y, z, d, b );

input x, y, z;
output d, b;

assign d = x^y^z;
assign b = (~x&(y^z))|(y&z);

endmodule

module Sub4bits(x, y, z, d, b);
  input [3:0] x, y;
  input [3:0] z;
  output[3:0] d, b;
  
  FullSubtractor FS0(x[0], y[0], z[0], d[0], b[0]);
  FullSubtractor FS1(x[1], y[1], b[0], d[1], b[1]);
  FullSubtractor FS2(x[2], y[2], b[1], d[2], b[2]);
  FullSubtractor FS3(x[3], y[3], b[2], d[3], b[3]);
  
  
  
endmodule