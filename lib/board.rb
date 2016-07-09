class Board

  attr_reader :board

  def initialize(rows = 6, columns = 7)
    @board = Array.new(columns) { Array.new(rows, '_')}
  end

  def ==(other)
    self.board == other.board
  end

  def place_piece(color, column)
    board[0][0] = 'X'
  end

end


