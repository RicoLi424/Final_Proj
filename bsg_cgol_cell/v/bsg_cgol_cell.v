/**
* Conway's Game of Life Cell
*
* data_i[7:0] is status of 8 neighbor cells
* data_o is status this cell
* 1: alive, 0: death
*
* when en_i==1:
*   simulate the cell transition with 8 given neighors
* else when update_i==1:
*   update the cell status to update_val_i
* else:
*   cell status remains unchanged
**/

module bsg_cgol_cell (
     input clk_i

    ,input en_i          
    ,input [7:0] data_i

    ,input update_i     
    ,input update_val_i

    ,output logic data_o
  );

  // TODO: Design your bsg_cgl_cell
  // Hint: Find the module to count the number of neighbors from basejump
  
  logic [3:0] num_of_alive;

  bsg_popcount #(.width_p(8)) cnt
   (.i(data_i)
   ,.o(num_of_alive)
   );

  always_ff @(posedge clk_i) begin
    if(en_i) begin
      case (num_of_alive)
	4'd0,4'd1: data_o <= 1'b0;
	4'd2: data_o <= data_o;
	default: data_o <= 1'b1;
      endcase
    end
    else if(update_i) begin
      data_o <= update_val_i;
    end
    else begin
      data_o <= data_o;
    end
  end

endmodule
