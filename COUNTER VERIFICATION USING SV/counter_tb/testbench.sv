`include"testcount.sv"
`include"interface.sv"
module counttest;
  testcount test;
  mailbox mail;
  operation intf();
 mod10counter inst (
    .clk(intf.clk),
    .rst(intf.rst),
    .q(intf.q)
 );
  
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
  
     forever #5 intf.clk = ~intf.clk;  
end
   initial begin
     #1
    intf.rst=1'b1;
    #1
    intf.rst=1'b0;
    #1;
  end
initial begin 
  $dumpfile("mod10counter.vcd");
    $dumpvars();
    $monitor("clk=%0d ,rst=%0d, q=%0d",intf.clk,intf.rst,intf.q);
      #200 $finish;
    end
endmodule
