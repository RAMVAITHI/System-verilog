class ABC;
  protected int a; 
  function new();
    a=0;
  endfunction


function int get_a();
    return a;
  endfunction
endclass


class DEF extends ABC;
  function new();
    super.new(); 
    a = 10;    
  endfunction
endclass

module tb;
  initial begin
    DEF pkt;
    pkt=new();
    $display("Value of a : %0d",pkt.get_a());
    end
endmodule

