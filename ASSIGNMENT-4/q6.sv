class pass_by_ref;
int refr = 2;
int val = 2;

function automatic int check_refer (ref int r);
$display("\n ------PASS BY REFERENCE ------------\n");
$display("Initial Value of REFR=%d", r);
r++;
$display("Value of REFR after incrementing %d", r);
endfunction

function int check_val(int v);
$display("\n -------PASS BY VALUE---------\n");
$display("Initial Value of VAL %d", v);
v++;
$display("Value of VAL after incrementing %d", v);
endfunction

endclass

pass_by_ref h1;

module test;
initial begin
  h1 = new();
  h1.check_refer(h1.refr);
  h1.check_val(h1.val);
  $display("\n --------In MEMORY--------\n");
  $display("Value of REFR after incrementing %d", h1.refr);
  $display("Value of VAL after incrementing %d", h1.val);
end
endmodule
