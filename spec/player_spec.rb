require 'player'


describe Player do 

  let(:player) { Player.new('X', 'Jess') } 

  it "has a color" do
    expect(player.color).to eq('X')
  end

  it "has a name" do
    expect(player.name).to eq('Jess')
  end

  
end