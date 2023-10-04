# class Classroom
# end
class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(individualstudent)
    @students.push(individualstudent)
    individualstudent.classroom = self
  end

  def remove_student(individualstudent)
    @students.delete(individualstudent)
    individualstudent.classroom = nil
  end

  attr_accessor :label
end
