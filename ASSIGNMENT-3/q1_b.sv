module eg;
  int dyn_arr[];
  initial begin
    dyn_arr = new[10];
    dyn_arr = '{6, 3, 5, 1, 4, 7, 2, 9, 10, 8};
    $display("array before sort: %p", dyn_arr);
    dyn_arr.sort();
    $display("Sorted array: %p", dyn_arr);
  end
endmodule
