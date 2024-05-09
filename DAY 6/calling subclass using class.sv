class BaseClass;
    virtual task name();
      $display("Base Class: silicon craft student name");
    endtask
endclass

class childClass1 extends BaseClass;
  task name();
     $display(" 1: Kaviya");
    endtask
endclass

class childClass2 extends BaseClass;
    task name();
      $display(" 2: Macklin");
    endtask
endclass

class childClass3 extends BaseClass;
     task name();
      $display(" 3: Mirthula");
    endtask
endclass

class childClass4 extends BaseClass;
    task name();
      $display(" 4: Sanjai");
    endtask
endclass

class childClass5 extends BaseClass;
    task name();
      $display(" 5: Kiran");
    endtask
endclass

class childClass6 extends BaseClass;
     task name();
      $display(" 6: Khavya");
    endtask
endclass

module Testbench;
    BaseClass pkt;

    initial begin
        
        childClass1 c1 = new();
        childClass2 c2 = new();
        childClass3 c3 = new();
        childClass4 c4 = new();
        childClass5 c5 = new();
        childClass6 c6 = new();
        
     pkt = c1;
    pkt.name();

    pkt = c2;
    pkt.name();

    
     pkt = c3;
     pkt.name();

    
     pkt = c4;
     pkt.name();

    
     pkt = c5;
     pkt.name();

    
     pkt = c6;
    pkt.name();
    end
endmodule
