module eg;
  initial begin
    fork
      begin
        $display("time=%t, process one started", $time);
        #5
        $display("time=%t, process one finished", $time);
      end
      $display("----------");
      
      begin
        $display("time=%t, process two started", $time);
        #20
        $display("time=%t, process two finished", $time);
      end
      join
      $display("----------");
      $display("time=%t, fork join executed", $time);
    
  end
endmodule
