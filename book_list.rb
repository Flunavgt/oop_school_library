require './book'

class BookList
  def book_list
    puts 'List of books:'
    puts ''
    @books.each_with_index do |bk, i|
      puts "#{i + 1}- Titulo: #{bk.title}   author:  #{bk.author}"
    end
    show_link_to_main
  end
end
