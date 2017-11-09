require 'game'
describe Game do
  let(:player) { double :fake_player, name: 'Marie' }
  let(:player2) { double :fake_player2, name: 'JJ' }
  let(:game) { described_class.new('Marie', 'JJ') }
  describe '#attack' do
    it 'should subtract 10 points when we attack' do
      allow(player2).to receive(:receive_damage).and_return(50)
      expect(game.attack).to eq 50
    end
  end
  describe '#poison' do
    it 'should subtract 10 points when we attack' do
      allow(player2).to receive(:receive_damage).and_return(20)
      expect(game.poison).to eq 20
    end
  end
end
