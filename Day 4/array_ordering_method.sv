module array_ordering_method;
  int a[];
  //int result[$];

  /* int result[$] does not work because in destrucive method an array
  doesn't stored in another array so that it will cause an error*/
 
  initial begin
    a = '{1,1,2,3,4,4,5,6,7,6,8};
    
    a.reverse();
    $display("%p", a);
    
    a.sort();
    $display("%p", a);
    
    a.rsort();
    $display("%p", a);
    
    // we can also use with clause like this in destructive method
    a.sort() with (-item);
    $display("%p", a);
    
    a.sort()with (item);
    $display("%p", a);
    
    a.shuffle();
    $display("%p", a);
    
    // shuffle using loop 
    
    for(int i=0; i<3; i++) begin
    a.shuffle();
      $display("\t%p", a);
    end
    
  end
endmodule
