require 'rspec'
require_relative 'solver'

describe Solver do
  describe '.factorial' do
    it 'calculates the factorial of a non-negative integer' do
      expect(Solver.factorial(4)).to eq(24)
    end
  end
end
