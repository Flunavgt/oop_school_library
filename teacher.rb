require './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, age, name = 'unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
