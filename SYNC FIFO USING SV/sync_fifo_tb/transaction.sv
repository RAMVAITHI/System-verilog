class transaction;
  rand bit oper;
  bit rd,wr;
  bit  full,empty;
  bit [7:0] data_in;
  bit  [7:0] data_out;
  bit  rst;
  constraint oper_ab{ oper dist {1 :/50 , 0 :/50};}
endclass
