require './book'

class AddBook
  attr_reader :books

  def add_book
    puts 'Adding a new book: '
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts ''
    puts "Book \"#{book.title}\" added successfully."
  end
end
