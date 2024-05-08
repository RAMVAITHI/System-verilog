class packet;
  rand bit[3:0] addr1;
  rand bit[3:0] addr2;
  constraint addr1_range{addr1 dist{0:=2, 5:=8,3:=4};}
  constraint addr2_range{addr2 dist{0:=2, [1:3]:/3, [4:6]/6};}
endclass
 module top;
   initial begin
     packet pkt;
     pkt=new();
     repeat(10) begin
       pkt.randomize();
       $display("addr1=%0d",pkt.addr1);
     end
       $display("-----");
      repeat(10) begin
       pkt.randomize();
        $display("addr2=%0d",pkt.addr2);
     end
   end
 endmodule
