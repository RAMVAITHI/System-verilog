module fadd( a,b,c,s,cy);
  input[3:0] a,b;
  input c;
  output  [3:0]s,cy;
  assign  s = a^b^c;
  assign cy = (a&b) | (a&c) | (b&c);
  endmodule

interface inf;
  logic [3:0]a,b;
  logic cin;
  logic co;
  logic [3:0]sum;
endinterface

module add(inf intf);
  wire c1,c2,c3;
  fadd fa0(intf.a[0],intf.b[0],intf.cin,intf.sum[0],c1);
  fadd fa1(intf.a[1],intf.b[1],c1,intf.sum[1],c2);
  fadd fa2(intf.a[2],intf.b[2],c2,intf.sum[2],c3);
  fadd fa3(intf.a[3],intf.b[3],c3,intf.sum[3],intf.co);
  endmodule
