module eg;
  int q1[$];
  int q2[$];
  int i;

  initial begin
    q1 = {1, 2, 3, 4, 5};
    q2 = {6, 7, 8, 9, 10};

    $display("Queue1: %p", q1);
    $display("Queue2: %p", q2);

    for (i = 0; i < q2.size(); i++) begin
      q1.push_back(q2[i]);
    end
    
    $display("Updated Queue1: %p", q1);
  end
endmodule
