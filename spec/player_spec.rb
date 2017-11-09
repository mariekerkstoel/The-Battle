describe Player do
  describe '#name' do
    let(:name) {described_class.new('Marie')}
    it 'should return its name' do
      expect(name.name).to eq 'Marie'
    end
  end
end
