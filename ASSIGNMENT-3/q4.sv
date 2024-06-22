typedef enum {cherry, apple, kiwi} fruits_t;
module eg;
  fruits_t fruits;

  initial begin
    fruits = kiwi;
    $display("Current fruit: %s",fruits.name());

    fruits = fruits.next(); 
    $display("Next fruit: %s", fruits.name());
  end
endmodule
