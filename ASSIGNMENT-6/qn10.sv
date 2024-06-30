class eg;
  rand bit [7:0] ar;
  constraint dist_c { 
    ar dist {
      [0:100] :/ 80,
      [101:255] :/ 20
    };
  }
endclass

module tb;
    eg rd;

    initial begin
        for (int i = 0; i < 8; i++) begin
            rd = new();
            if (rd.randomize()) begin
                $display("Randomized value %0d: %d", i, rd.ar);
            end else begin
                $display("Randomization failed for iteration %0d", i);
            end
        end
    end
endmodule: tb
