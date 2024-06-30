class AB;
  int i = 1;
endclass

AB a1;
AB a2;
module test();
  initial begin
    repeat(2) begin
      //AB a1 = new();
     // AB a2 = new();
      a1 = new();
      a2 = new();
      a1.i++;
      a2.i++;
      $display("disp_1 -- a1.i = %0d, a2.i = %0d", a1.i, a2.i);
      a1.i++;
      a2.i++;
      $display("disp_2 -- a1.i = %0d, a2.i = %0d", a1.i, a2.i);
    end
  end
endmodule

