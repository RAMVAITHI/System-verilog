interface add;
  logic [3:0] a,b,c; 
  logic s;
  logic cy;
  modport name(input a,b,c,output s,cy);
endinterface

module fa(add r); 
  assign r.s = r.a ^ r.b ^ r.c;
  assign r.cy = (r.a &r.b)|(r.c &r.b)|(r.a &r.c);
endmodule
