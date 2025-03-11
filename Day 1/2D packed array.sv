module _2D_paked_array;
  bit [2:0][3:0] a;
  logic[3:0][2:0] b;
  reg[2:0][4:0] c;
  
  initial
    begin
      a = 'hffaa;
      b = 'b101101;
      c = 'h1011_ffff;
      
      foreach(a[i])begin
        foreach(a[i][j])begin
          $display("value of a[%0d][%0d] = [%0d]",i,j,a[i][j]);
        end
      end
          foreach(b[i])begin
            foreach(b[i][j])begin
              $display("value of b[%0d][%0d] = [%0d]",i,j,b[i][j]);
            end
          end
      foreach(c[i])begin
        foreach(c[i][j])begin
          $display("value of c[%0d][%0d] = [%0d]",i,j,c[i][j]);
        end
      end
    end
      endmodule
