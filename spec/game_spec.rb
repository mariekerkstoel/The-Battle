require 'game'
describe Game do
  let(:player) { double :fake_player, name: 'Marie' }
  let(:player2) { double :fake_player2, name: 'JJ' }
  let(:game) { described_class.new('Marie', 'JJ') }

  describe '#attack_player1' do
    it 'should subtract 10 points when we attack' do
      allow(player).to receive(:receive_damage).and_return(50)
      expect(game.attack_player1).to eq 50
    end
  end
  describe '#attack_player2' do
    it 'should subtract 10 points when we attack' do
      allow(player2).to receive(:receive_damage).and_return(50)
      expect(game.attack_player2).to eq 50
    end
  end
  describe '#poison_player1' do
    it 'should subtract 10 points when we attack' do
      allow(player2).to receive(:receive_damage).and_return(20)
      expect(game.poison_player1).to eq 20
    end
  end
  describe '#poison_player2' do
    it 'should subtract 10 points when we attack' do
      allow(player2).to receive(:receive_damage).and_return(20)
      expect(game.poison_player2).to eq 20
    end
  end
  describe '#switch_turn' do
    it 'should add 1 to the count variable' do
      expect{ game.switch_turn }.to change{ game.count }.by(Game::SWITCH)
    end
  end
end
