module syncRAM( din,addr,cs,we,rd,clk,dout);                
/*parameter ADR   = 8;
parameter DAT   = 8;
parameter DPTH  = 8;*/
  input   [7:0]  din;
  input   [7:0]  addr;
  input cs,we,rd,clk;
  output reg [7:0]  dout;
// output reg [7:0]  sram_out;
   reg [7:0] SRAM [7:0];
  always @ (posedge clk)

begin

  if (cs ) begin
    if (we == 1'b1 && rd == 1'b0) begin
      SRAM [addr] <= din;
  end
    else if (rd == 1'b1 && we == 1'b0) begin
      dout <= SRAM [addr]; 
  end
  end
 // sram_out <= SRAM[addr];
 end
  
endmodule
