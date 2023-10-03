require_relative 'nameable'
# class Person < Nameable
class Person < Nameable
  def initialize(id, name = 'Unknown', age = 0, parent_permission: true, nameable: nil)
    super
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = nameable
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_service?
    of_age? || @parent_permission == true
  end

  def correct_name
    name
  end

  attr_reader :id
  attr_accessor :name, :age
end
