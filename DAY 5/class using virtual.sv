class parent_class;
  virtual function void display;
    $display("verilog");
  endfunction
 endclass
 
class child_class extends parent_class;
  function void display;
    $display("system verilog");
  endfunction
  endclass
 
module virtual_class;
  initial begin
    parent_class     b_c;
   child_class c_c;
    b_c = new();
     c_c = new();
     b_c.display();
    $display("----");
    b_c = c_c;
    b_c.display();
  end
endmodule

  
