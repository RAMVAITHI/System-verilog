class packet;
  string addr_range;
  rand bit[3:0] addr;
  constraint addr_limit{ if(addr_range=="small")
    addr>10;
                        else 
                          addr<100;}
endclass
  module tb;
    initial begin
      packet pkt;
      pkt = new();
      pkt.addr_range="small";
      repeat(3)
begin
  pkt.randomize();
  $display("addr_range= %s, addr=%0d",pkt.addr_range,pkt.addr);
end
      pkt.addr_range="high";
      repeat(3)
begin
  pkt.randomize();
  $display("addr_range= %s, addr=%0d",pkt.addr_range,pkt.addr);
  end 
    end
  endmodule
