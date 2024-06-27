interface DFF_if(input logic clk);
  logic d, q, reset;

  clocking cb @(posedge clk);
    input d, reset;
    output q;
  endclocking
  
  modport DUT (input d, reset, clk, output q);
  modport TB (clocking cb, output d, reset);
endinterface
    
module DFF(DFF_if.DUT dff_if);
  always @(posedge dff_if.clk ) begin
    if (dff_if.reset)
      dff_if.q <= 0;
    else
      dff_if.q <= dff_if.d;
  end
endmodule

