class packet;
  rand bit[3:0]addr;
  string addr_range;
  constraint addr_limit{addr_range=="small"-> (addr<8);}
endclass
module tb;
  initial begin
    packet pkt;
    pkt.addr_range="small";
    pkt =new;
    repeat(3) begin
      pkt.randomize();
      
      $display("addr_ range= %s,addr=%0d",pkt.addr_range,pkt.addr);
    end
  end 
endmodule
