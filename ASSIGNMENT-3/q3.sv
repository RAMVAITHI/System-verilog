module eg;
  int q[$] = {1, 2, 3, 7, 6};

  initial begin
    $display(" queue: %p", q);

    while (q.size() > 0) begin
      $display("Popped element: %0d", q.pop_front());
    end

    $display(" queue: %p", q);
  end
endmodule
