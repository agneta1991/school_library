require 'rspec'
require './person'

describe Person do
  person = Person.new('Agneta')

  context('attributes') do
    it 'has a name' do
      expect(person.name).to eq('Agneta')
    end

    it 'has age set to default 0' do
      expect(person.age).to equal(0)
    end

    it 'has a id randomly asigned to an integer if its not set' do
      expect(person.id).to be_an(Integer)
    end

    it 'has parents permission set up to default true if its not set otherwise' do
      expect(person.parent_permission).to be(true)
    end

    it 'has an empty array of rentals' do
      expect(person.rentals).to eq([])
    end
  end

  describe '#can_use_service?' do
    it 'returns true if the person is older than 18' do
      person.age = 20
      expect(person.can_use_service?).to be(true)
    end

    it 'returns true if the person has parent permission' do
      person.age = 15
      person.parent_permission = true
      expect(person.can_use_service?).to be true
    end

    it 'returns false if the person younger than 18 and does not have parent permission' do
      person.age = 15
      person.parent_permission = false
      expect(person.can_use_service?).to be false
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect(person.correct_name).to eq('Agneta')
    end
  end
end
