  module tb;
       uc inf();
   // uc #4 inf(); // to change parameter value
   // defparam inf.N=4; // to change parameter value  any 1 method can be used
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
