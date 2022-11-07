require './person'

class AddStudent
  def add_student
    puts 'Add a new student: '
    print 'Age: '
    age = gets.chomp
    print 'Classroom: '
    classroom = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission true/false: '
    parent_permission = gets.chomp
    student = Student.new(age, classroom, name, parent_permission)
    @people.push(student)
    puts ''
    puts "Student \"#{student.name}\" added successfully."

    run
  end
end
