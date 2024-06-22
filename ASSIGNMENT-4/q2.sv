module test();
int d, result;
int a = 2, b = 3;

function automatic mult(ref int a, ref int b, output int c);
c = (a*b)+2;
a++;
$display("Inside Function");
$display("@time t = %0d: a = %0d and b = %0d and c = %0d", $time, a, b, c);
endfunction

initial
fork
begin
#1;
mult(a, b, d);
$display(" -------Begin block1 -----------");
$display("@time t = %0d: a = %0d and b = %0d and d = %0d", $time, a, b, d);
end
begin
#2;
mult(a, b, d);
$display("----------Begin block2--------- ");
$display("@time t = %0d: a = %0d and b = %0d and d = %0d", $time, a, b, d);
end
join
endmodule
