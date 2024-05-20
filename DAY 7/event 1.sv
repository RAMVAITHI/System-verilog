module eventa;
  event e1;
  task process1();   
      #10;
      $display("@%0t,before triggering event",$time);
      ->e1 ;
    $display("@%0t,after triggering event",$time);
     endtask
  
  task process2();
     $display("@%0t,waiting for event to trigger",$time);
      @e1;
      $display("@%0t,event e1 is triggered",$time);
  endtask
  
  initial begin
    fork
      process1();
      process2();
    join
  end
endmodule
