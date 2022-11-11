require './book'
require './app'
# require 'add_book'

module BookList
  attr_accessor :book

  def self.book_list
    puts 'List of books:'
    puts ''
    @books.each_with_index do |bk, i|
      puts "#{i + 1}- Titulo: #{bk.title}   author:  #{bk.author}"
    end
    App.show_link_to_main
  end
end
