class packet;
  rand bit[3:0]addr1;
  rand bit[3:0]addr2;
  constraint addr1_range { addr1 > 5; }
  constraint addr2_range { addr2 < 10; }
  
endclass
module eg;
  initial begin
    packet pkt;
    pkt= new();
    repeat(10) begin
      pkt.randomize();
      $display("addr1=%0d,addr2=%0d",pkt.addr1,pkt.addr2);
    end
  end 
endmodule
