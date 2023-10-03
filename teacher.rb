require_relative 'person.rb'

class Teacher < Person
    def initialize (id, age = 0, name = 'Unknown', parent_permission = true, specialization)
        super(id, age, name, parent_permission)
        @specialization = specialization
    end

    def can_use_service?
        true
    end
end
