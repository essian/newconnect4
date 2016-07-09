require 'human'
require 'board'

describe Human do

  let(:human) { Human.new('X', 'Jess') }
  let(:board) { Board.new }
  let(:some_new_board) { Board.new }

  it "has a color" do
    expect(human.color).to eq('X')
  end

  it "has a name" do
    expect(human.name).to eq('Jess')
  end

  it "can make a move" do
    allow(human).to receive(:gets).and_return("1")
    human.make_move(board)
    expect(board).to eq(some_new_board)
  end

end
