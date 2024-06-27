  module tb;
       uc inf();
    ctr ins (.inf(inf));
     initial begin
     $display("\n // Parameterised interface example");
     //used to monitor the count values
     $monitor("\ncount=%0d",inf.count);
     inf.clk=0;
     forever #5 inf.clk=~inf.clk;
     end
     initial begin
     inf.reset=1;
     #20;
     inf.reset=0;
     #70 $finish;
     end
     endmodule
