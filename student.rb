require_relative 'person'

# class Student < Person
# end
class Student < Person
  def initialize(id, classroom, age = 0, name = 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end