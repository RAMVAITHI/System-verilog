module eg;
  int a=1;
  initial begin
    do begin
      $display("a=%0d",a);
      a++;
    end
   // while(a<6);
    while(a<2);
   end
endmodule
