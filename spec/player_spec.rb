require 'player'

describe Player do
  subject(:Dave) {described_class.new('Dave')}

  it 'returns name player' do
    expect(subject.name).to eq 'Dave'
  end

end
