module dff(d,clk,rst,q,qb);
  input d,clk,rst;
  output reg q,qb;
  always@(posedge clk)
    begin
    if(rst)
      q <= 1'b0;
  else
    begin
      q <= d;
      qb <= ~d;
    end
    end
endmodule
