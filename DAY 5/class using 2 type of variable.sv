class A;
    int i=32;
  function void display();
    $display("i =%0d",i);
  endfunction
endclass

class B extends A;
    string p= "anu";
  bit [7:0] c=14;
   function void display();
     $display("p = %s,c = %0d",p,c);
  endfunction
endclass

module test;
  initial begin
    A a;
    B b;
    a = new();
    b = new();
    //a=b;
    a.display();
    b.display();
        
    end
endmodule
