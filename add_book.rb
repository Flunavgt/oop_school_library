require './book'
require './app'

module AddBook
  attr_accessor :book

  def add_book
    puts 'Adding a new book: '
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    App.new.books.push(book)
    puts ''
    puts "Book \"#{book.title}\" added successfully."
    App.show_link_to_main
  end

  # def book_list
  #   puts 'List of books:'
  #   puts ''
  #   @books.each_with_index do |bk, i|
  #     puts "#{i + 1}- Titulo: #{bk.title}   author:  #{bk.author}"
  #   end
  # end
end
