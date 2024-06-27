interface fa;
  logic a, b, cin;  
  logic sum, cout;   
endinterface

module fadd(fa fa_if);
  always_comb begin
    fa_if.sum = fa_if.a ^ fa_if.b ^ fa_if.cin;
    fa_if.cout = (fa_if.a & fa_if.b) | (fa_if.b & fa_if.cin) | (fa_if.a & fa_if.cin);
  end
endmodule
