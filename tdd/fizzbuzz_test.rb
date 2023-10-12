require 'rspec
require_relative 'solver'

describe Solver do
 describe self.fizzbuzz do
end

describe '.fizzbuzz' do
  it 'returns "fizz" for multiples of 3' do
    expect(Solver.fizzbuzz(9)).to eq('fizz')
  end
end

it 'returns "buzz" for multiples of 5' do
  expect(Solver.fizzbuzz(10)).to eq('buzz')
end
