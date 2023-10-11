require_relative 'person'

class Teacher < Person
  def initialize(name = 'Unknown', age = 0, specialization = 'Unknown', id: nil)
    super(name, age, id: id)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
