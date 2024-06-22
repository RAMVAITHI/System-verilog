module top;
  int num1;
  int num2;
  initial begin
    num1 = int'(10.0 - 1.8);
    $display("The integer value is : %d", num1);
    num2 = int'(5/3); 
    $display("The integer value is : %d", num2);
  end
endmodule
