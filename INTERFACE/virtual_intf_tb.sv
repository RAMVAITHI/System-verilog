// class driver
class driver;
  virtual fa vif;

  function new(virtual fa vif);
    this.vif = vif;
  endfunction

  task run();
    repeat (10) begin
      vif.a = $urandom;
      vif.b = $urandom;
      vif.cin = $urandom;
      #10;
      $display("\n a=%0b, b=%0b, cin=%0b -> sum=%0b, cout=%0b", vif.a, vif.b, vif.cin, vif.sum, vif.cout);
    end
    #200 $finish;
  endtask
endclass
//tb
 `include "driver.sv"

module tb;
  fa fa_if();
  fadd ins(.fa_if(fa_if));
  driver drv = new(fa_if);
  initial begin
    drv.vif = fa_if;
    drv.run();
    $finish;
  end
endmodule
