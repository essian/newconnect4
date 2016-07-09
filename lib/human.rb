require 'player'

class Human < Player

  def initialize(color, name)
    super(color, name)
  end

  def make_move(board)
    ask_move until assign_move(board)
  end

  def ask_move
    puts "Where do you want to move?"
  end

  def get_move
    gets.chomp.to_i - 1
  end

  def assign_move(board) 
    column = get_move
    valid_entry?(column) ? board.place_piece(@color, column) : false
  end

  def valid_entry?(column)
    (0..6).include?(column)
  end

end