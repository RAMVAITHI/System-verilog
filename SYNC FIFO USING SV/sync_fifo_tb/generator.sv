`include "transaction.sv"
class generator;

  transaction tr;        
  mailbox mbx;             

  int count = 0;          

  int i = 0;
  event next;               
 event done;               
  function new(mailbox mbx);
    this.mbx = mbx;
  endfunction 

  task run(); 
    tr = new();
  repeat (count) begin

      assert (tr.randomize) else $error("Randomization failed");

      i++;

      mbx.put(tr);

      $display("[GEN] : Oper : %0d iteration : %0d", tr.oper, i);
 @(next);
-> done;     
    end
  endtask

  endclass
