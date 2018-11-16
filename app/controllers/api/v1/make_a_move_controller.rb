module Api
  module V1
    class MakeAMoveController < ApplicationController
      def make_a_move
        if(params.has_key?(:board))
          current_board = params[:board]
          move = MakeAMoveHelper.generate_a_move(current_board)
          updated_board = MakeAMoveHelper.update_board(current_board)

          render json: { 'move': move, 'board': updated_board }
        end
      end
    end
  end
end
