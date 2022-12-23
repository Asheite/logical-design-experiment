module test;
 reg clk, reset, control;
 wire [7:0] count;

 up_down_counter udc1(count, clk, reset, control);

 initial
 begin
    clk = 0;
    reset = 1;
    control = 1;

    #3
    reset = 0;

    #3
    reset = reset;
    control = control;

    #3
    reset = reset;
    control = control;

    #3
    reset = reset;
    control = control;

    #3
    reset = reset;
    control = control;

    #48
    control = ~control;
    
    #3
    reset = ~reset;

    #3
    reset = ~reset;
 end

 always #3 clk = ~clk;
endmodule
