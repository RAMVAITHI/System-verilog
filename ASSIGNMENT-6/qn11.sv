class eg;
  rand bit [7:0] num;
  constraint num_c { (num % 2 == 0) || (num % 2 == 1); }
endclass

module test;
  initial begin
   eg eo = new();
    for (int i = 0; i < 10; i++) begin
      assert(eo.randomize());
      if (eo.num % 2 == 0)
        $display("Number: %0d (Even), One's count: %0d", eo.num, $countones(eo.num));
      else
        $display("Number: %0d (Odd), One's count: %0d", eo.num, $countones(eo.num));
    end
  end
endmodule
