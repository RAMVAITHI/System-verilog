module tb_top;
  intf inf();
  fs ins(inf);
  initial begin
    inf.a=0;inf.b=0;inf.bi=1;
    #2
    inf.a=1;inf.b=0;inf.bi=1;
    #2
    inf.a=0;inf.b=1;inf.bi=1;
  end
  
  
 initial begin $monitor("a=%0d,b=%0d,bi=%0d,d=%0d,bout=%0d",inf.a,inf.b,inf.bi,inf.d,inf.bout);
  #20  $finish;
 end
endmodule
