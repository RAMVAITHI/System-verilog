module tb;
  logic clk;
  
 
  DFF_if dff_if(.clk(clk));

 
  DFF dff_inst (.dff_if(dff_if.DUT));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    dff_if.reset = 1;
    dff_if.d = 0;
    #10 dff_if.reset = 0;
    #10 dff_if.d = 1;
    #10 dff_if.d = 0;
    #10 dff_if.d = 1;
    #10 dff_if.d = 0;
    #10 $finish;
  end

  initial begin
    $monitor("At time %0t:clk=%0d, d = %0b, q = %0b, reset = %0b", $time,dff_if.clk, dff_if.d, dff_if.q, dff_if.reset);
  end
endmodule
