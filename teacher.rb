require './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'unknown', parent_permission: nil)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @specialization = specialization
    super(@age, @name, @parent_permission)
  end

  def can_use_services
    true
  end
end
