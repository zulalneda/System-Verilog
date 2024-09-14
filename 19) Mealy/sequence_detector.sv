`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12.09.2024 16:29:17
// Design Name:
// Module Name: sequence_detector
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


// Mealy
// Sequence = 1011

module sequence_detector(
    input logic clk,
    input logic rstn,
    input logic din,
    output logic dout_mealy
  );

    integer counter;
  typedef enum logic [1:0]
          {
            S0_mealy, //00
            S1_mealy, //01
            S2_mealy, //10
            S3_mealy //11
          } states_mealy;

  states_mealy state_mealy;

  always_ff @(posedge clk)
  begin

    if(!rstn)
    begin
      state_mealy <= S0_mealy;
      dout_mealy <= 1'b0;
    end

    else
    begin
      case (state_mealy)
        S0_mealy :
        begin
          if (din) // 1
          begin
            state_mealy <= S1_mealy;
            dout_mealy <= 1'b0;
          end
          else
          begin
            state_mealy <= S0_mealy;
            dout_mealy <= 1'b0;
          end
        end
        S1_mealy :
        begin
          if(!din) // 10 -> 0
          begin
            state_mealy <= S2_mealy;
            dout_mealy <= 1'b0;
          end
          else
          begin
            state_mealy <= S1_mealy;
            dout_mealy <= 1'b0;
          end
        end

        S2_mealy:
        begin
          if(din) // 101 -> 1
          begin
            state_mealy <= S3_mealy;
            dout_mealy <= 1'b0;
          end
          else
          begin
            state_mealy <= S0_mealy;
            dout_mealy <= 1'b0;
          end
        end

        S3_mealy:
        begin
          if(din) // 1011 -> 1
          begin
            state_mealy <= S1_mealy;
            dout_mealy <= 1'b1;
          end
          else
          begin
            state_mealy <= S2_mealy;
            dout_mealy <= 1'b0;
          end
        end

        default :
        begin
          state_mealy <= S1_mealy;
          dout_mealy <= 1'b0;
        end
      endcase
    end
  end
endmodule
