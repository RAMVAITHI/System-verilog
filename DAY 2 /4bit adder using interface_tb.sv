module test_tb;
  inf intf();
  add ins(intf);
  initial begin
#0 intf.a=4'b0000; intf.b=4'b0000; intf.cin=1'b0;
#4 intf.a=4'b0101; intf.b=4'b0010; 
#4 intf.a=4'b1110; intf.b=4'b0100; 
#4 intf.a=4'b1000; intf.b=4'b0100; 
#4 intf.a=4'b0101; intf.b=4'b1010; 
     end
  
  initial begin $monitor("a=%0d,b=%0d,cin=%0d,sum=%0d,co=%0d",intf.a,intf.b,intf.cin,intf.sum,intf.co);
    #50 $finish;
  end
endmodule
