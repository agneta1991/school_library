require 'rspec'
require './trimmerdecorator'
require './decorator'

describe TrimmerDecorator do
  let(:nameable) { double('Nameable') }
  let(:decorated_nameable) { TrimmerDecorator.new(nameable) }

  describe '#correct_name' do
    context 'when the name is 10 characters or less' do
      it 'returns the original name' do
        allow(nameable).to receive(:correct_name).and_return('ShortName')
        expect(decorated_nameable.correct_name).to eq('ShortName')
      end
    end

    context 'when the name is more than 10 characters' do
      it 'trims the name to 10 characters' do
        allow(nameable).to receive(:correct_name).and_return('VeryLongNameThatShouldBeTrimmed')
        expect(decorated_nameable.correct_name).to eq('VeryLongNa')
      end
    end

    context 'when the name is an empty string' do
      it 'returns an empty string' do
        allow(nameable).to receive(:correct_name).and_return('')
        expect(decorated_nameable.correct_name).to eq('')
      end
    end

    context 'when the name is exactly 10 characters' do
      it 'returns the original name' do
        allow(nameable).to receive(:correct_name).and_return('Exactly10C')
        expect(decorated_nameable.correct_name).to eq('Exactly10C')
      end
    end
  end
end
