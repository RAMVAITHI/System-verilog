module top_tb;
  inf intf();
  bintogray ins(intf);
  initial begin 
    intf.a=1; intf.b=1; intf.c=1; intf.d=1;
    #2
     intf.a=1; intf.b=1; intf.c=1;intf.d=0;
    #2
        intf.a=0; intf.b=0; intf.c=1; intf.d=1;
    #2
        intf.a=0; intf.b=1; intf.c=0; intf.d=1;
        end
  
  initial begin
$monitor("a=%0d,b=%0d,c=%0d,d=%0d,g3=%0d,g2=%0d,g1=%0d,g0=%0d",intf.a,intf.b,intf.c,intf.d,intf.g3,intf.g2,intf.g1,intf.g0);
    #50 $finish;
  end
endmodule
