module eg;
  int dyn_arr[];
  int i, j, temp;

  initial begin
    dyn_arr = new[10];
    dyn_arr = '{6, 3, 5, 1, 4, 9, 2, 7, 10, 8};

    $display("array before sort: %p", dyn_arr);

    for (i = 0; i < dyn_arr.size(); i++) begin
      for (j = 0; j < dyn_arr.size() - 1 - i; j++) begin
        if (dyn_arr[j] > dyn_arr[j+1]) begin
          temp = dyn_arr[j];
          dyn_arr[j] = dyn_arr[j+1];
         dyn_arr[j+1] = temp;
        end
      end
    end

    $display("Sorted array: %p", dyn_arr);
  end
endmodule
