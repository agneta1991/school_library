require 'rspec'
require_relative 'solver'

describe Solver do
  describe '.reverse' do
    it 'reverses a string' do
      expect(Solver.reverse('reverse')).to eq('esrever')
    end
  end
end
