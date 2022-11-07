require './book'
require './rental'

class RentHistory
  def rent_history
    puts 'select a person by typing it\'s number and press enter:'
    @people.each_with_index { |el, i| puts "#{i + 1}- #{el.name}" }
    person_index = gets.chomp
    unless person_index.to_i.positive? && person_index.to_i <= @people.length
      puts 'Invalid person number, Try again.'
      rent_book
    end

    @rental.filter do |el|
      puts "#{el.book.title} (#{el.date})" if el.person == @people[person_index.to_i - 1]
    end
    show_link_to_main
  end
end
