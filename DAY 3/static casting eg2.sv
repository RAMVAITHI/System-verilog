 module cast;
   int ia[2];
   real ra;
   string sa;
   initial begin
     ra = (4*0.5);
     ia[0]= int'(4*0.5);
    sa="B";
     ia[1]= int'(sa);
     $display("ra=%0f",ra);
     $display("casting from real to int:ia[0] = %0d", ia[0]);
     $display("sa=%0s",sa);
     $display("casting from string to int: ia[1] = %0d", ia[1]);
     
   end
 endmodule
