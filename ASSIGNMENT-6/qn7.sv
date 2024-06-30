class RandClass;
    rand bit [7:0] var1;
    rand bit [7:0] var2;

    constraint c_var1 {
      var1 inside {[0:50]}; 
    }

    constraint c_var2 {
        var2 inside {[0:255]};
        var2 != var1; 
    }

    function new();
        var1 = 40; 
    endfunction

    function void display();
        $display("var1 = %0d, var2 = %0d", var1, var2);
    endfunction
endclass: RandClass

module test;
    initial begin
        RandClass obj;
        repeat (10) begin
            obj = new;
            obj.randomize();
            obj.display();
        end
    end
endmodule: test
