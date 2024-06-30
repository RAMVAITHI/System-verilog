class facgen;
    rand int even_factorial[5];
    rand int odd_factorial[5];

    constraint c_even_factorial {
        foreach (even_factorial[i]) {
            even_factorial[i] == factorial(2*i);
        }
    }

    constraint c_odd_factorial {
        foreach (odd_factorial[i]) {
            odd_factorial[i] == factorial(2*i + 1);
        }
    }

    function int factorial(int n);
        if (n == 0) return 1;
        else return n * factorial(n - 1);
    endfunction
endclass

module test;
facgen tr;

    initial begin
       tr = new;
       tr.randomize();
        $display("Factorials of the first 5 even numbers:");
        foreach ( tr.even_factorial[i])
          $display("Even[%0d] = %0d", i, tr.even_factorial[i]);

        $display("\nFactorials of the first 5 odd numbers:");
        foreach ( tr.odd_factorial[i])
            $display("Odd[%0d] = %0d", i,  tr.odd_factorial[i]);
    end
endmodule
