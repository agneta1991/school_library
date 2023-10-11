require 'rspec'
require './classroom'

describe Classroom do
  let(:classroom_label) { 'Math101' }
  let(:classroom) { Classroom.new(classroom_label) }
  let(:student) { Student.new(18, 'Alice') }

  describe '#initialize' do
    it 'creates a new Classroom instance with a label' do
      expect(classroom.label).to eq(classroom_label)
    end

    it 'initializes with an empty list of students' do
      expect(classroom.students).to be_empty
    end
  end

  describe '#add_student' do
    it 'adds a student to the classroom' do
      classroom.add_student(student)
      expect(classroom.students).to include(student)
    end

    it 'sets the classroom attribute of the student' do
      classroom.add_student(student)
      expect(student.classroom).to eq(classroom)
    end
  end

  describe '#remove_student' do
    it 'removes a student from the classroom' do
      classroom.add_student(student)
      classroom.remove_student(student)
      expect(classroom.students).not_to include(student)
    end

    it 'sets the classroom attribute of the student to nil' do
      classroom.add_student(student)
      classroom.remove_student(student)
      expect(student.classroom).to be_nil
    end
  end

  describe 'accessors' do
    it 'allows reading and writing the label attribute' do
      new_label = 'Physics101'
      classroom.label = new_label
      expect(classroom.label).to eq(new_label)
    end

    it 'allows reading the students attribute' do
      expect(classroom.students).to be_an(Array)
    end
  end
end
