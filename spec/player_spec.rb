require 'player'

describe Player do
  subject(:dave) {described_class.new('Dave')}
  subject(:mittens) {described_class.new('Mittens')}

  describe '#name' do
    it 'returns name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      allow(dave).to receive(:rand).and_return(15)
      expect { dave.receive_damage}.to change { dave.hit_points }.by -15
    end
  end
end
