require './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super(@age, @name, @parent_permission)
    @classroom = classroom
  end

  def classrooms(classroom)
    @classroom = classroom
    classroom.student_list.push(self) unless classroom.student_list.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
