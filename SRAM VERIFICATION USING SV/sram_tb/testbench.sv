`include "testsyncRAM.sv"
`include "interface.sv"
module syncRAMtest;
  testsyncRAM test;
  mailbox mail;
  operation intf();
  syncRAM inst (.din(intf.din),
                .addr(intf.addr),
                .cs(intf.cs),
                .we(intf.we),.rd(intf.rd),
                .clk(intf.clk),.dout(intf.dout));
  initial begin
    mail = new();
    test = new(intf,mail);
    fork
      test.memory;
      test.run;
    join
  end
 
  initial begin
    intf.clk = 1'b1;
    forever #10 intf.clk = ~intf.clk;   
  end
  
  initial begin
    intf.cs = 1'b1; intf.din= 1'b0;intf.addr=1'b0;
  forever begin
      #20;
      intf.din = $random %8;
      intf.addr = $random%8;
      intf.rd=1'b0;intf.we=1'b1;
      #20;
      intf.we=1'b0;
      intf.rd=1'b1; 
      #20;
    end
  end
  initial begin
    $dumpfile("syncRAM.vcd");
    $dumpvars();
    $monitor("din = %0d addr = %0d cs = %0d we = %0d rd = %0d clk = %0d  dout = %0d ",intf.din,intf.addr,intf.cs,intf.we,intf.rd,intf.clk, intf.dout);
    
  #500 $finish;
  end 
endmodule
