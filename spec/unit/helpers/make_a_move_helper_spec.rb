require 'rails_helper'

RSpec.describe MakeAMoveHelper do
  describe 'The MakeAMove helper module' do

    it 'returns the first element in an array as the move' do
      available_moves = [1, 2, 3]
      generated_move = MakeAMoveHelper.generate_a_move(available_moves)

      expect(generated_move).to eq(1)
    end

    it 'returns an array with the first element removed as the updated board' do
      current_board = [1, 5, 7, 8]
      updated_board = MakeAMoveHelper.update_board(current_board)

      expect(updated_board).to eq([5, 7, 8])
    end
  end
end
