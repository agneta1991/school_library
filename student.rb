require_relative './person.rb'

class Student < Person
  def initialize(id, age = 0, name = 'Unknown', parent_permission = true, classroom)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
