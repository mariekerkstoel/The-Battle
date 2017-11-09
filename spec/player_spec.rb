describe Player do
  describe '#name' do
    let(:player) {described_class.new('Marie')}
    it 'should return its name' do
      expect(player.name).to eq 'Marie'
    end
  end
  describe '#hitpoints' do
    let(:player) { described_class.new('Marie')}
    it 'should let every player have 60 points at the beginning of the game' do
      expect(player.hitpoints).to eq 60
    end
  end
  describe '#attack' do
    let (:player) { described_class.new('Marie') }
    let (:player2) { described_class.new('JJ') }
    it 'should subtract 10 points when we attack' do
      player.attack(player2)
      expect(player2.player_points).to eq 50
    end
  end
end
