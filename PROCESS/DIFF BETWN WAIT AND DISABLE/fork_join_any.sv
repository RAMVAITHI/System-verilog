module eg;
  initial begin
    #10 $display($time,"a");
fork
  
  #20 $display($time,"b");
  #10 $display($time,"c");
  #5 $display($time,"d");
    
join_any
    $display($time,"e"); 
  end
endmodule
