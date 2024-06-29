class packet #(parameter type T = int);
  T address;
  T data   ;

  function new();
    address = 10;
    data    = 20;
  endfunction

function void disp();
    $display ("data=%0d,addr=%0d",data,address);
  endfunction
  endclass

module eg;
  packet # (bit[31:0])pkt;
  initial begin
     pkt= new();
    $display("");
    pkt.disp();
      end
   
endmodule
