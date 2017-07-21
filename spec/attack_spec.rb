require 'attack'

describe Attack do
  subject(:attack) { described_class }
  let(:player) { double(:player) }

  describe '.run' do
    it "attacks the player" do
      expect(player).to receive(:receive_damage)
      attack.run(player)
    end
  end
end
