module array_locator;
  int a[];
  int result[$];
  initial begin
    a = '{1,1,2,3,4,4,5,6,7,6,8};
    
    result = a.min();
    $display("%p", result);
    
    result = a.max();
    $display("%p", result);
    
    result = a.unique();
    $display("%p", result);
    
    result = a.unique_index();
    $display("%p", result);
    
  end
endmodule
