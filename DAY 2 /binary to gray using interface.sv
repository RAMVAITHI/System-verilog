interface inf;
  logic a,b,c,d;
  logic g3,g2,g1,g0;
endinterface
  
module bintogray(inf intf);
  begin
    assign intf.g0 = intf.c^intf.d;
    assign intf.g1 = intf.b^intf.c;
    assign intf.g2 = intf.a^intf.b; 
    assign intf.g3 = intf.a;
  end
endmodule
