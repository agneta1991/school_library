require 'rspec'
require './decorator'
require './nameable'
require './person'

describe Decorator do
  nameable = Nameable.new
  decorator = Decorator.new(nameable)

  describe '#initialize' do
    it 'should set the nameable attribute' do
      expect(decorator.nameable).to eq(nameable)
    end
  end

  describe '#correct_name' do
    it 'should delegate the call to the nameable' do
      allow(nameable).to receive(:correct_name).and_return('John')
      result = decorator.correct_name
      expect(result).to eq('John')
    end
  end
end
