class F;
  bit[3:0] addr;
  
  function void display_a();
    $display("addr=%0d",addr);
  endfunction
endclass
class G extends F;
  bit[3:0] data;
  function void display_d();
    $display("data=%0d",data) ;
  endfunction
endclass
module test;
  initial begin
 G g;
    g=new();
   g.addr= 7;
   g.data =20;
   g.display_a();
   g.display_d(); 
  end
endmodule
