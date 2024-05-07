class packet;
  rand bit [4:0]addr1;
  rand bit [5:0]addr2;
  constraint addr1_range {addr1>6;}
  constraint addr2_range {addr2<11;}
endclass
class packet1 extends packet;
  rand bit [4:0]addr1;
  rand bit [5:0]addr2;
  constraint addr1_range {addr1<6;}
  constraint addr2_range {addr2>11;}
endclass

module top;
  initial begin
    packet pkt;
    packet1 pkt1;
    pkt=new();
    pkt1=new();
    repeat(6)
    begin
      pkt.randomize();
      $display("addr1=%0d,addr2=%0d",pkt.addr1,pkt.addr2);
    end
    $display("-----------");
    repeat(10)
    begin
      pkt1.randomize();
      
      $display("addr1=%0d,addr2=%0d",pkt1.addr1,pkt1.addr2);
    end
    
  end
endmodule
