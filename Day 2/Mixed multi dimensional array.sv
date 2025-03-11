module mixed_multi_dim_array;
  reg [15:0] c [2:0][4:0]; 

  initial begin
   
    c[0][0] = 16'hABCD; 
    c[0][1] = 16'h1234; 
    c[0][2] = 16'h5678;
    c[0][3] = 16'h9ABC;
    c[0][4] = 16'hDEFA;
    c[1][0] = 16'h1357;
    c[1][1] = 16'h2468;
    c[1][2] = 16'h9BDF;
    c[1][3] = 16'h0FED;
    c[1][4] = 16'hA1B2;
    c[2][0] = 16'h3333;
    c[2][1] = 16'h4444;
    c[2][2] = 16'h5555;
    c[2][3] = 16'h6666;
    c[2][4] = 16'h7777;

    $display("\nUnpacked 3D Array values:");
    foreach (c[i,j]) begin
      //c[i][j] = $random; or we can use $random
      $display("c[%0d][%0d] = %h", i, j, c[i][j]);
    end
  end
endmodule
