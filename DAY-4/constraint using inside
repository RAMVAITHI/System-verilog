class packet;
  rand bit[3:0]addr;
  rand bit[3:0]start_addr;
  rand bit[3:0]end_addr;
  constraint addr_range{ addr inside{[start_addr:end_addr]};}
endclass
  
module top;
  initial begin
  packet pkt;
  pkt=new();
  repeat(8) begin
    pkt.randomize();
    $display("start_addr=%0d,end_addr=%0d", pkt.start_addr,pkt.end_addr);
    $display("addr=%0d",pkt.addr);
  end
  end 
endmodule
