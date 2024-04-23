module testbench_tb;
  intf i_intf();
  test t(i_intf);
  mux inst(.a(i_intf.a),.b(i_intf.b),.c(i_intf.c),.d(i_intf.d),.s(i_intf.s),.y(i_intf.y));
endmodule

class environment;
  virtual intf vif;
  
  function new(virtual intf vif);
    this .vif=vif;
  endfunction
  
  task run;
  vif.driver.a = 0;
  vif.driver.b = 0;
  vif.driver.c = 0;
  vif.driver.d = 1;
  vif.driver.s = 0;
  
  
    $display("a = %0d, b = %0d,c = %0d,d = %0d,s = %0d",vif.driver.a,vif.driver.b,vif.driver.c,vif.driver.d,vif.driver.s);
  #5;
    $display(" y = %0d",vif.driver.y);
  $finish;
endtask
endclass
  
  program test(intf i_intf);
    environment env;
    initial begin
      env= new(i_intf);
      env.run();
    end
  endprogram
