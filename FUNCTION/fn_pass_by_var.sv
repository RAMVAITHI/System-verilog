module func_pass_by_variables;
  
  int result,a,b;
  initial
  begin
    $display("\t ----output for function passing by values through variables-----");
      a=7;
    b=6;
    $display("\tcalling the function");

    result=sum(a,b);
    $display("\treturned from function");
    $display("\tstored the value of sum in result");
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  function int sum(input int var1,var2);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction : sum

endmodule : func_pass_by_variables
