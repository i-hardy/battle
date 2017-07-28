require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
        expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'current_turn' do
    it 'says whose turn it is' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe 'switch_turns' do
    it 'switches the turn of player' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#opponent_of' do
    it "returns the opponent of a given player" do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

  describe '#game_over?' do
    it 'ends the game' do
      allow(player_1).to receive(:hit_points) { 0 }
      allow(player_2).to receive(:hit_points) { 10 }
      expect(subject.game_over?).to eq true
    end
  end

  describe '#loser' do
    it 'displays name of the loser' do
      allow(player_1).to receive(:hit_points) { 0 }
      allow(player_2).to receive(:hit_points) { 10 }
      expect(subject.loser).to eq player_1
    end
  end

end
