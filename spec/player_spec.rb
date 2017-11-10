describe Player do
  let(:player) { described_class.new('Marie') }
  describe '#name' do
    it 'should return its name' do
      expect(player.name).to eq 'Marie'
    end
  end
  describe '#hitpoints' do
    it 'should let every player have 60 points at the beginning of the game' do
      expect(player.hitpoints).to eq 60
    end
  end
  describe '#receive_damage' do
    it 'should reduce the hitpoints' do
      expect{ player.receive_damage }.to change {player.hitpoints}.by(-Player::ATTACK)
    end
  end
  describe '#receive_more_damage' do
    it 'should reduce the hitpoints' do
      expect{ player.receive_more_damage }.to change { player.hitpoints }.by(-Player::POISON)
    end
  end
end
