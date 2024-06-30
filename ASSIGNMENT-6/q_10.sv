class RandDist;
  rand bit [7:0] var;
  constraint dist_c { 
    var dist {
      [0:100] :/ 80,
      [101:255] :/ 20
    };
  }
endclass

module test_rand_dist;
  RandDist rd;

  initial begin
    rd = new();
    if (rd.randomize()) begin
      $display("Randomized value: %d", rd.var);
    end else begin
      $display("Randomization failed");
    end
  end
endmodule
