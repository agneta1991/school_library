require 'rspec'
require './capitalize'
require './person'
require './nameable'

describe CapitalizeDecorator do
  let(:nameable) { double('Nameable') }
  let(:decorated_nameable) { CapitalizeDecorator.new(nameable) }

  describe '#correct_name' do
    it 'capitalizes the correct name' do
      allow(nameable).to receive(:correct_name).and_return('john')
      expect(decorated_nameable.correct_name).to eq('John')
    end

    it 'capitalizes the correct name with mixed case' do
      allow(nameable).to receive(:correct_name).and_return('JoHN')
      expect(decorated_nameable.correct_name).to eq('John')
    end

    it 'capitalizes the correct name with a single character' do
      allow(nameable).to receive(:correct_name).and_return('a')
      expect(decorated_nameable.correct_name).to eq('A')
    end

    it 'capitalizes the correct name with an empty string' do
      allow(nameable).to receive(:correct_name).and_return('')
      expect(decorated_nameable.correct_name).to eq('')
    end
  end
end
