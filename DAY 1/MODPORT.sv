interface mux;
  logic [3:0] a,b,c,d;
  logic [1:0] s;
  logic [3:0]y;
  modport name(input a,b,c,d,s,output y);
endinterface

module mux_4_1(mux r); 
  always@(*)
      case(r.s)
        2'b00:r.y = r.a;
        2'b01:r.y = r.b;
        2'b10:r.y = r.c;
        2'b11:r.y = r.d;
      endcase
  
endmodule
