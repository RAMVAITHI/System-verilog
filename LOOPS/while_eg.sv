module eg;
  int x = 2; 
  initial begin 
   while ( x<5)begin 
   int a;  
   $display ("Iteration = %0d",x); 
   $display ("a is a local variable");
    $display ("The size of a = %0d",$size(a));
    $display ("------------------------------");
      x++;
   end
while (x<8)begin
  $display ("x is a global varaible ");
  $display ( "The value of x = %0d",x);
  $display ("------------------------");
 x++;
end 
 end 
endmodule
