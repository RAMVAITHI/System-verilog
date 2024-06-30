class trans;
  virtual task send();
    $display("IN Class trans");
  endtask
endclass

class ex_trans1 extends trans;
  virtual task send();
    $display("IN Class ex_trans1");
  endtask
endclass

class ex_trans2 extends ex_trans1;
  task send();
    $display("IN Class ex_trans2");
  endtask
endclass

trans b_h;
ex_trans1 ex1_h;
ex_trans2 ex2_h;

module inheritance();
  initial begin
    ex1_h = new();
    b_h = ex1_h;
    b_h.send();
  end
endmodule
