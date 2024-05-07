class packet;
  rand bit[3:0] addr1;
  rand bit[4:0] addr2;
  constraint addr1_range;
  constraint addr2_range;
endclass
constraint packet :: addr1_range {addr1 > 5;}
constraint packet :: addr2_range {addr2 < 15;}
module top;
  initial begin
  packet pkt;
    pkt=new();
    repeat(5) begin
      pkt.randomize();
      $display("addr1=%0d,addr2 =%0d", pkt.addr1,pkt.addr2);
    end
  end
endmodule
