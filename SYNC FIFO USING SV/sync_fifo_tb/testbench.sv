`include "interface.sv"
`include "test.sv"
module tb;

  fifo_if fif();
  test t1(fif);

  fifo dut (fif.clock, fif.rst, fif.wr, fif.rd, fif.data_in, fif.data_out, fif.empty, fif.full);

    

  initial begin

    fif.clock <= 0;

  end

    

  always #10 fif.clock <= ~fif.clock;

    



    

  initial begin
