
interface intf;
  logic x0,x1,x2,x3;
  logic y1,y0;
endinterface

module encoder( intf inf);
  assign inf.y0= inf.x1|inf.x3;
  assign inf.y1= inf.x2|inf.x3;
endmodule
