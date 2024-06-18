class driver;

  virtual fifo_if fif;  
 mailbox  mbx;  
  transaction datac;       
  
  function new( virtual fifo_if fif, mailbox mbx);
     this.fif = fif;
    this.mbx = mbx;
   endfunction
  task reset();

    fif.rst <= 1'b1;

    fif.rd <= 1'b0;

    fif.wr <= 1'b0;

    fif.data_in <= 0;

    repeat (5) @(posedge fif.clock);

    fif.rst <= 1'b0;

    $display("[DRV] : DUT Reset Done");

    $display("------------------------------------------");

  endtask

  task write();

    @(posedge fif.clock);

    fif.rst <= 1'b0;

    fif.rd <= 1'b0;

    fif.wr <= 1'b1;

    fif.data_in <= $urandom_range(1, 10);

    @(posedge fif.clock);

    fif.wr <= 1'b0;

    $display("[DRV] : DATA WRITE  data : %0d", fif.data_in);  

    @(posedge fif.clock);

  endtask

  task read();  

    @(posedge fif.clock);

    fif.rst <= 1'b0;

    fif.rd <= 1'b1;

    fif.wr <= 1'b0;

    @(posedge fif.clock);

    fif.rd <= 1'b0;      

    $display("[DRV] : DATA READ");  

    @(posedge fif.clock);

  endtask

  task run();

    forever begin

      mbx.get(datac);  

      if (datac.oper == 1'b1)

        write();

      else

        read();

    end

  endtask
endclass
