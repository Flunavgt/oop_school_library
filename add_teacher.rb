require './person'
require './teacher'

class AddTeacher
  def add_teacher
    puts 'Add a new teacher: '
    print 'Age: '
    age = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    print 'Name: '
    name = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
    puts ''
    puts "Teacher \"#{teacher.name}\" added correctly."

    run
  end
end
