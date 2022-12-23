module stimulate;
  
  reg [3:0] A, B;
  wire A_gt_B, A_eq_B, A_lt_B;
  
  reg i; // doing the loop for 2 times
  
  comparator cp( A, B, A_gt_B, A_eq_B, A_lt_B );

  initial
   begin
    for ( i=0; i<2; i=i+1 ) // to meet the example
    begin
    A = 0;
    B = 0;
    
    #3
    A = 1;
    B = 15;
    
    #3
    A = 2;
    B = 14;
  
    #3
    A = 3;
    B = 13;
    
    #3
    A = 4;
    B = 12;
    
    #3
    A = 5;
    B = 11;
    
    #3
    A = 6;
    B = 10;

    #3
    A = 7;
    B = 9;

    #3
    A = 8;
    B = 8;

    #3
    A = 9;
    B = 7;
    
    #3
    A = 10;
    B = 6;
    
    #3
    A = 11;
    B = 5;

    #3
    A = 12;
    B = 4;
    
    #3
    A = 13;
    B = 3;
    
    #3
    A = 14;
    B = 2;

    #3
    A = 15;
    B = 1;
    end
  end
  
endmodule