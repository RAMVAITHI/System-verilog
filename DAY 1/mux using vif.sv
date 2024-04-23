interface intf();
  logic [1:0] a;
  logic [1:0] b;
  logic [1:0] c;
  logic [1:0] d;
  logic [1:0] s;
  logic [1:0] y;
  modport driver (output a, b,c,d,s, input y);
  endinterface

module mux(a,b,c,d,s,y);
  input a, b,c,d;
  input [1:0] s;
  output y;
  assign y = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);
endmodule
