module mux_4_1_tb;
  mux intf();
  mux_4_1 inst(.r(intf.name));
  
  initial begin 
 intf.name.a = 5;  intf.name.b = 7; intf.name.c = 9; intf.name.d = 11; 

    intf.name.s= 2'b00;
    #4
     intf.name.s= 2'b01;
    #4
     intf.name.s= 2'b10;
    #4
     intf.name.s= 2'b11;   
  end
  initial begin    $monitor("a=%0d,b=%0d,c=%0d,d=%0d,s=%0d,y=%0d",intf.name.a,intf.name.b,intf.name.c,intf.name.d,intf.name.s,intf.name.y);
  end
endmodule
