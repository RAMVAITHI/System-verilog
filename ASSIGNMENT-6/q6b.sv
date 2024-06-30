class Pattern;
  rand int arr[6];
  constraint c {
    foreach (arr[i]) {
      arr[i] == i;
    }
  }
endclass

module display_pattern;
  Pattern p;
  string out;

  initial begin
    p = new();
    if (p.randomize()) begin
      
      out = "";
      foreach (p.arr[i]) begin
        out = {out, $sformatf("%0d", p.arr[i])};
      end
      $display("Concatenated array: %s", out);
    end else begin
      $display("Randomization failed");
    end
  end
endmodule
