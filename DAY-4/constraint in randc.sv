class packet;
  randc bit[3:0]addr1;
  randc bit[4:0]addr2;
  randc bit[5:0]addr3;
  constraint addr1_range { addr1 > 3; }
  constraint addr2_range { addr2 < 10; }
  constraint addr3_range { addr3 > 30; }
  
endclass
module eg;
  initial begin
    packet pkt;
    pkt= new();
    repeat(10) begin
      pkt.randomize();
      $display("addr1=%0d,addr2=%0d,addr3=%0d",pkt.addr1,pkt.addr2,pkt.addr3);
    end
  end 
endmodule
           
