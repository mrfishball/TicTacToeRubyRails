module MakeAMoveHelper
  def self.generate_a_move(board)
    return board[0]
  end

  def self.update_board(board)
    return board[1..-1]
  end
end
