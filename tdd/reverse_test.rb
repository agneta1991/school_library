require 'rspec
require_relative 'solver'

describe self.reverse do
end

describe '.reverse' do
  it 'reverses a string' do
    expect(Solver.reverse('reverse')).to eq('esrever')
  end
end
