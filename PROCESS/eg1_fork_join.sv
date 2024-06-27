module eg;
  initial begin
    #10 $display($time,"a");
fork
  begin
    #1 $display($time,"b");
  end
  begin
    #8 $display($time,"c");
    #6 $display($time,"d");
  end
  begin
    #5 $display($time,"e");
    #10 $display($time,"f");
  end
join
    $display($time,"g"); 
  end
endmodule
