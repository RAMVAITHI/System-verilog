class packet;
  randc bit[3:0] add1;
  randc bit[4:0] add2;
  randc bit[2:0] add3;
endclass
module top;
  initial begin
    packet pkt;
    pkt=new();
    repeat(10) begin
      pkt.randomize();
      $display("add1= %0d,add2=%0d,add3=%0d",pkt.add1,pkt.add2,pkt.add3);
    end
  end
endmodule
