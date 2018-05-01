require 'player'

describe Player do
  subject {Player.new("John")}
  let(:starting_health) { described_class::STARTING_HEALTH }
  let(:default_damage) { described_class::DEFAULT_DAMAGE }

  describe '#name' do
    it 'has a name' do
      expect(subject.name).to eq "John"
    end
  end

  describe '#health' do
    it 'defaults with 50 health' do
      expect(subject.health).to eq starting_health
    end
  end

  describe '#attack' do
    it 'reduces health by 10' do
      subject.attack
      expect(subject.health).to eq starting_health - default_damage
    end
  end
end
