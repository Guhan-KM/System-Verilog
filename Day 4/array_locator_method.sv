module array_locator;
  string arr[];
  string check;
  int a[$];
  string result[$];
  initial begin
    arr = '{"yamaha", "honda", "suzuki", "hero"};
    
    result = arr.find(check) with (check <="yamaha");
    $display("\n %p",result);
    
    a = arr.find_first_index(check) with (check=="hero");
    $display("\n %p",a);
    
    result = arr.find_first(check) with (check<="yamaha"& check<"hero");
    $display("\n%p",result);
    
    result = arr.find_last(check) with (check < "yamaha");
    $display("\n%p",result); // last means the array order in this hero is the last one so the o/p is hero
    
    a = arr.find_last_index(check) with (check < "yamaha");
    $display("\n%p",a); // hero's index 
  
  end
endmodule
