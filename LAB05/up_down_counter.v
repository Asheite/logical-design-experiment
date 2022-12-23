module up_down_counter( count, clk, reset, control );
 output reg [7:0] count;
 input  clk, reset, control;
 reg crtl;

 always @(posedge clk) begin
    crtl = control;
 end

always @( negedge clk or posedge reset )
 begin
  if ( reset ) begin
  count <= 0;
  end
 else if ( crtl == 1 ) begin
  count <= count + 1;
  end
 else begin
  count <= count - 1;
  end
 end
endmodule