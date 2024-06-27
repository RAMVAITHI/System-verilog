module fork_join_none();

  event e1;
  string a,b,c,d;
  
  initial begin:BEGIN_B1 //This is a procedural block
    
    $display("[%0t] Thread_T1: Starting of fork_join_none",$time);// Main Thread 
    a = "Kapu";
    c = "Malpe";
   
    fork:FORK_F1
      
      begin:BEGIN_B2
        #1 $display("[%0t] Thread_T2: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);    
        b <= a;
        #1 $display("[%0t] Thread_T3: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
      end:BEGIN_B2
      
      fork:FORK_F2
        #2 -> e1;
        $display("[%0t] Thread_T4: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
      join:FORK_F2
      
    join_none:FORK_F1

    #1 $display("[%0t] Thread_T5: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 3
    wait(e1.triggered);
    d = "Kodi";
    $monitor("[%0t] Thread_T6: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);//Thread 4
  
  end:BEGIN_B1

endmodule:fork_join_none
