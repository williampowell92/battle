require 'player'

describe Player do
  subject {Player.new("John")}
  it 'has a name' do
    expect(subject.name).to eq "John"
  end
end
