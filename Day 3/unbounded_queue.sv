module queue_unbounded;
  int queue[$];
  string queue1[$];
  initial begin
    queue = '{1,2,3,4,5};
    queue1 = '{"tamil", "english", "hindi"};
    
    $display("%0d",queue.size());
    $display("%0d",queue1.size());
    
    queue.insert(2,6);
    $display("\ninsert");
    $display("%p",queue);
    
    queue1.insert(2,"marathi");
    $display("\ninsert");
    $display("%p", queue1);
    
    queue.pop_front();
    $display("\npop front");
    $display("%p", queue);
    
    queue.push_front(1);
    $display("\npush front");
    $display("%p", queue);
    
    queue1.pop_back();
    $display("\npop back");
    $display("%p", queue1);
    
    queue1.push_back("hindi");
    $display("\npush back");
    $display("%p", queue1);
    
    queue.delete(5);
    $display("\ndelete particular index");
    $display("%p", queue);
    
    queue1.delete(2);
    $display("\ndelete particular index");
    $display("%p", queue1);
    
    queue.delete();
    $display("\ndelete all");
    $display("%p", queue);
    
    queue1.delete();
    $display("\ndelete all");
    $display("%p", queue1);
  
  end
endmodule
