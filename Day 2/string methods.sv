module string_;

string str1 ="Manipal";
string str2 ="Udupi";

initial begin
  $display("\nstr1 = Manipal");
  $display("str2 = Udupi");
  
  if(str1==str2) 
    $display("equal");
    else
      $display("not equal");
  
  str1.len();
  $display("str1.length = %0d",$length(str1));
  
  str2.putc(2,"o");
  $display("str2.putc = %p",str2);
  
  str1.getc(4);
  $display("str1.getc = %s",str1.getc(4));
  
  str1.tolower();
  $display("str1.tolower = %p",str1.tolower);
  
  str2.toupper();
  $display("str2.toupper = %s",str2.toupper);
  
  str1.compare(str2);
  $display("str1.compare = %0d",str1.compare(str2));
  
  str2.substr(1,2);
  $display("substring of mainstring(udopi) = %s",str2.substr(1,2));
  
end
  endmodule
