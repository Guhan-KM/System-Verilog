module dy_of_asc_aray;
  int array[][string];
  initial begin
    array = new[4];
    array[0] = '{"JD":5, "JW":3,"KF":4};
    foreach(array[i])
      foreach(array[i][key])
        $display("\tvalue of array[%0d][%s]= [%0d]",i,key,array[i][key]);
  end
endmodule
