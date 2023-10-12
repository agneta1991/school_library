require 'rspec'
require './decorator'

describe Decorator do

  let(:nameable) { Nameable.new }
  let(:decorator) { Decorator.new(nameable) }

  describe '#initialize' do
    it 'should set the nameable attribute' do
      expect(decorator.nameable).to eq(nameable)
    end
  end

  describe '#correct_name' do
    it 'should delegate the call to the nameable' do
      expect(decorator.correct_name).to eq(nameable.correct_name)
    end
  end
end