require './book'

class RentBook
  def rent_book
    puts 'select a book by typing it\'s number and press enter:'
    @books.each_with_index { |el, i| puts "#{i + 1}- #{el.title} (#{el.author})" }
    book_index = gets.chomp
    unless book_index.to_i.positive? && book_index.to_i <= @books.length
      puts 'Invalid book number, Try again.'
      rent_book
    end
    puts 'select a person by typing it\'s number and press enter:'
    @people.each_with_index { |el, i| puts "#{i + 1}- #{el.name}" }
    person_index = gets.chomp
    unless person_index.to_i.positive? && person_index.to_i <= @people.length
      puts 'Invalid person number, Try again.'
      rent_book
    end
    print 'Rent Date (yyyy/mm/dd):'
    rent_date = gets.chomp
    rental = Rental.new(rent_date, @books[book_index.to_i - 1], @people[person_index.to_i - 1])
    @rental.push(rental)
    puts 'Book rental saved successfully.'
    run
  end
end
