require 'rspec'
require './teacher'

describe Teacher do
  teacher = Teacher.new

  context('attributes') do
    it 'has a name set to default Unknown' do
      expect(teacher.name).to eq('Unknown')
    end

    it 'has an age set to default 0' do
      expect(teacher.age).to eq(0)
    end

    it 'has a specialization set to default Unknown' do
      expect(teacher.specialization).to eq('Unknown')
    end
  end

  describe '#can_use_service?' do
    context('can_use_service?') do
      it 'returns true' do
        teacher = Teacher.new('Unknown', 25, 'Professor')
        expect(teacher.can_use_service?).to be true
      end
    end
  end
end
