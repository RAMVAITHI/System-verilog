class packet;
  rand bit[3:0] addr1;
  rand bit[4:0] addr2;
  rand bit[2:0] addr3;
  endclass
module top;
  initial begin
    packet pkt;
    pkt=new();
    repeat(10) begin
      pkt .randomize();
      $display("addr1=%0d,addr2=%0d,addr3=%0d",pkt.addr1,pkt.addr2,pkt.addr3);
    end
  end
endmodule
