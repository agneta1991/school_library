require_relative 'person'

class Teacher < Person
  def initialize(id, specialization, age = 0, name = 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
