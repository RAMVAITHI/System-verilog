module tb;
 add intf();
 fa inst(.r(intf.name));
  
  initial begin 
 intf.name.a = 1'b1;  intf.name.b = 1'b0; intf.name.c =  1'b1; 
    #4
 intf.name.a =  1'b1;  intf.name.b =  1'b1; intf.name.c =  1'b0;       #4
 intf.name.a =  1'b0;  intf.name.b =  1'b1; intf.name.c =  1'b0; 
     #4
 intf.name.a =  1'b1;  intf.name.b =  1'b1; intf.name.c =  1'b1; 
     #4
 intf.name.a =  1'b0;  intf.name.b =  1'b0; intf.name.c =  1'b0;   
  end
  initial begin    $monitor("a=%0d,b=%0d,c=%0d,s=%0b,cy=%0b",intf.name.a,intf.name.b,intf.name.c,intf.name.s,intf.name.cy);
  end
endmodule
