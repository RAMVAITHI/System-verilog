`include"testdff.sv"
`include"interface.sv"
module dfftest;
  testdff test;
  mailbox mail;
  operation intf();
  dff inst (
    .d(intf.d),
    .clk(intf.clk),
    .rst(intf.rst),
    .q(intf.q),
    .qb(intf.qb));
  /*initial begin
  
     forever #5 intf.clk = ~intf.clk;  
end
  initial begin
    intf.clk=1'b0;
    intf.rst=1'b1;
    #1
    intf.rst=1'b0; 
  end */
  
 initial begin
    mail = new();
    test = new(intf,mail);
    fork
      test.memory;
      test.run;
  
      join
  end
  
        initial begin
       intf.clk=1'b0;
  
     forever #1 intf.clk = ~intf.clk;  
end
   initial begin
     #1
    intf.rst=1'b1;
    #1
    intf.rst=1'b0;
    #1;
  end
initial begin 
    $dumpfile("dff.vcd");
    $dumpvars();
    $monitor("  d= %0d,clk=%0d ,rst=%0d, q=%0d, qb=%0d",intf.d,intf.clk,intf.rst,intf.q,intf.qb);
      #100 $finish;
    end
endmodule
