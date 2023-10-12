require 'rspec'
require_relative 'solver'

describe Solver do
  describe '.fizzbuzz' do
    it 'returns "fizz" for multiples of 3' do
      expect(Solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" for multiples of 5' do
      expect(Solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for multiples of both 3 and 5' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(Solver.fizzbuzz(7)).to eq('7')
    end
  end
end
