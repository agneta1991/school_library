require 'rspec'
require_relative 'solver'

describe Solver do
  describe '.factorial' do
    it 'calculates the factorial of a non-negative integer' do
      expect(Solver.factorial(4)).to eq(24)
    end

    it 'returns 1 for factorial of 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'raises an error for negative input' do
      expect { Solver.factorial(-3) }.to raise_error(ArgumentError, 'number has to be positive or 0')
    end
  end
end
