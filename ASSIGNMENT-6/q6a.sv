class eg;
  rand int arr[9];
  constraint c {
    arr[0] == 0;
    arr[1] == 2;
    arr[2] == 1;
    arr[3] == 3;
    arr[4] == 4;
    arr[5] == 6;
    arr[6] == 5;
    arr[7] == 7;
    arr[8] == 8;
  }
endclass

module display;
 eg e;

  initial begin
    e = new();
    if (e.randomize()) begin
      
      for (int i = 0; i < 9; i++) begin
        $display("arr[%0d] = %0d", i, e.arr[i]);
      end
    end else begin
      $display("Randomization failed");
    end
  end
endmodule
