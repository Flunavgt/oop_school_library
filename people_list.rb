require './person'
require './teacher'
require './student'

class PeopleList
  def people_list
    puts 'List of people:'
    puts ''
    @people.each_with_index do |peop, i|
      puts "#{i + 1}- #{peop.class} name: #{peop.name} age: #{peop.age}"
    end
    show_link_to_main
  end
end
