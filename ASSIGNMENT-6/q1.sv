class parent;
  rand bit [2:0] a;
  constraint a_size { a == 3; }
endclass: parent

class child1 extends parent;
  rand bit [2:0] a;
  constraint a_size { a == 2; }
  constraint c_size { super.a == a; }
endclass: child1

parent p1_h;
child1 ch1_h;

module parent_child_same_prop;
  initial begin
    ch1_h = new();
    for (int i = 0; i < 7; i++);
    assert(ch1_h.randomize());
    $display("ch1_h: %p", ch1_h);
  end
endmodule
