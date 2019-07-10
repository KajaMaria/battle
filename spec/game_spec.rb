require 'game'

describe Game do

  let(:player1) {double :player1, :name => "name", :hp => 60}
  let(:player2) {double :player2, :name => "name", :hp => 60, :receive_damage => 50}
  let(:player2_damaged) {double :player2_damaged, :name => "name", :hp => 50}
  subject(:game) { Game.new(player1,player2) }
  describe "#attack" do
    it  "has an is_attacked method" do
      # game.attack(player2)
      expect(game.attack(player2)).to eq(50)
    end
  end
end
