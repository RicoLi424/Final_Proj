module bsg_cgol_ctrl #(
   parameter `BSG_INV_PARAM(max_game_length_p)
  ,localparam game_len_width_lp=`BSG_SAFE_CLOG2(max_game_length_p)
) (
   input clk_i
  ,input reset_i

  ,input en_i

  // Input Data Channel
  ,input  [game_len_width_lp-1:0] frames_i
  ,input  v_i
  ,output ready_o

  // Output Data Channel
  ,input yumi_i
  ,output v_o

  // Cell Array
  ,output update_o
  ,output en_o
);

  wire unused = en_i; // for clock gating, unused
  
  // TODO: Design your control logic

 typedef enum logic [1:0] {eWAIT, eBUSY, eDONE} state_e;

  state_e  state_n, state_r;

  //logic overflow; 
  //logic [game_len_width_lp-1:0] cnt_unused;
  logic start_cnt;

  logic [game_len_width_lp-1:0] max;

  always_ff @(posedge clk_i) begin
    if(v_i) begin
      max <= frames_i;
    end
  end
  
  assign start_cnt = state_r == eBUSY;

  assign ready_o = state_r == eWAIT;
  assign     v_o = state_r == eDONE;

  logic cnt;
  always_ff @(posedge clk_i)
    begin
      if(reset_i) begin
        cnt <= 1'b0;
      end
      else if(start_cnt) begin
        if(cnt == max) begin
          cnt <= 1'b0;
        end
        else begin
          cnt <= cnt + 1'b1;
        end
      end
    end

/*
  bsg_counter_dynamic_limit_en #(.width_p(game_len_width_lp)) counter
            ( .clk_i(clk_i)
            , .reset_i(reset_i)
            , .en_i(start_cnt)
            , .limit_i(frames_i)
            , .counter_o(cnt_unused)
            , .overflowed_o(overflow)
            );
*/

  always_comb
    begin
      state_n = state_r;
      if (ready_o & v_i) begin
        state_n = eBUSY;
      end else if ((state_r == eBUSY) & (cnt == max)) begin
        state_n = eDONE;
      end else if (v_o & yumi_i) begin
        state_n = eWAIT;
      end
    end


  always_ff @(posedge clk_i)
    begin
      if (reset_i)
          state_r <= eWAIT;
      else
          state_r <= state_n;
    end

  assign update_o = ready_o & v_i; 

  assign en_o = (state_r == eBUSY) & (cnt != max);


endmodule
