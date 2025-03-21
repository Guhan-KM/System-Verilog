module queue_bounded;
 int queue[$:255];
  bit queue1[$:255];
  initial begin
    queue = {1,2,3,4,5};
    queue1 = {10000,20000};
    
    $display("%0d",queue.size());
    $display("%0d",queue[0]);
    
    $display("%0d",queue1.size());
    $display("%0d",queue1[0]); // it shows 0 bcz bit can store 0 or 1 so the LSB of binary (10000) is 0
    
     queue.insert(2,6);
    $display("\ninsert");
    $display("%p",queue);
    
     queue.pop_front();
    $display("\npop front");
    $display("%p", queue);
    
    queue.push_front(1);
    $display("\npush front");
    $display("%p", queue);
    
        queue1.push_front(1);
    $display("\npush front queue1");
    $display("%p", queue1);
    
    queue.delete(5);
    $display("\ndelete particular index");
    $display("%p", queue);
    
      queue.delete(5);
    $display("\ndelete particular index");
    $display("%p", queue);
    
          queue.delete();
    $display("\ndelete all");
    $display("%p", queue);
    
  end
endmodule
