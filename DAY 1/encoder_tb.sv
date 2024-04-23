module test_tb;
  intf inf();
  encoder ins(inf);
 
  initial  begin
   inf.x0 = 0 ;  inf.x1 = 0 ; inf.x2 = 0 ; inf.x3 = 1 ;
#4
    inf.x0 = 0 ;  inf.x1 = 0 ; inf.x2 = 1 ; inf.x3 = 0 ;
#4 
    inf.x0 = 0 ;  inf.x1 = 1 ; inf.x2 = 0 ; inf.x3 = 0 ;
#4
    inf.x0 = 1 ;  inf.x1 = 0 ; inf.x2 = 0 ; inf.x3 = 0 ;
   end
  initial begin
    $dumpfile("encoder.vcd");
    $dumpvars();
    $monitor("x0=%0d,x1=%0d,x2=%0d,x3=%0d,y0=%0d,y1=%0d",inf.x0,inf.x1,inf.x2,inf.x3,inf.y0,inf.y1);
    #50 $finish;
  end
endmodule 

