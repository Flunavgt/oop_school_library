require './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super
    @classroom = classroom
  end

  def classrooms(classroom)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
