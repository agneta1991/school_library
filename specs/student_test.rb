require 'rspec'
require './student'

describe Student do
  student = Student.new('Laura', 25)

  context('attributes') do
    it 'has a name' do
      expect(student.name).to eq('Laura')
    end

    it 'has age as set' do
      expect(student.age).to be(25)
    end

    it 'has parent permsion to be true' do
      expect(student.parent_permission).to be(true)
    end

    it 'has classroom set to nil as per default' do
      expect(student.classroom).to be(nil)
    end

    it 'play hookey is equal to ¯\(ツ)/¯ ' do
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
