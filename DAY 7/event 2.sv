module event2;
  event e;
  task process1();
    $display("@%0t:before triggering event",$time);
    ->e;
    $display("@%0t:after triggering event",$time);
  endtask
  task process2();
    #10;
    $display("@%0t:waiting to trigger event",$time);
    @e;
    $display("@%0t:event2 is triggered",$time);
  endtask
  
    initial begin
    fork
      process1();
      process2();
    join
    end
endmodule
