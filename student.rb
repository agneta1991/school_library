require_relative 'person'

class Student < Person
  def initialize(name = 'Unknown', age = 0, id: nil, parent_permission: true, classroom: nil)
    super(name, age, id: id, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  attr_reader :classroom
end
