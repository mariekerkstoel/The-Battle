describe Player do
  describe '#name' do
    let(:player) { described_class.new('Marie') }
    it 'should return its name' do
      expect(player.name).to eq 'Marie'
    end
  end
  describe '#hitpoints' do
    let(:player) { described_class.new('Marie') }
    it 'should let every player have 60 points at the beginning of the game' do
      expect(player.hitpoints).to eq 60
    end
  end
end
