module asssociative_array;
  int array[string];
  string a;
  string b;
  initial begin 
    array = '{"nithish":1, "valan":2, "jana":3, "kural":4};
    $display("num = %0d",array.num());
    $display("size = %0d",array.size());
    if(array.exists("valan"))
      $display("valan exists");
    else
      $display("he doesn't exists");
    
    if(array.exists("guhan"))
      $display("he exists");
    else
      $display("he doesn't");
    
    if(array.first(b))
      $display("%s = %0d",b,array[b]);
    
    if(array.last(b))
      $display("%s = %0d",b,array[b]);
    
    array.delete("valan");
    $display("%p",array);
    
    array.delete();
    $display("%p",array);
    
  end
endmodule
