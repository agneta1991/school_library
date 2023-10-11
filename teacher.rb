require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(name = 'Unknown', age = 0, specialization = 'Unknown', id: nil, parent_permission: true)
    super(name, age, id: id, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
