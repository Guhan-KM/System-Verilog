module _3D_packed_array;
  bit[2:0][3:0][2:0] a;
  initial
    begin
      a = 'd100;
      
//       foreach(a[i]) begin
//         foreach(a[i][j])begin
//           foreach(a[i][j][k])begin
//             $display("value of a[%0d][%0d][%0d] = [%0d]",i,j,k,a[i][j][k]);
//           end
//         end
//       end
//     end
      
      for(int i=0; i<3; i++) begin
        for(int j=0; j<4; j++) begin
          for(int k=0; k<3; k++) begin
       $display("value of a[%0d][%0d][%0d] = [%0d]",i,j,k,a[i][j][k]);     
    end
  end
  end
  end
endmodule
