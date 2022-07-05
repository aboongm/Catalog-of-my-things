require_relative 'book'

class CreateBook
  def create_book
    print "\nEnter a book title: "
    title = gets.chomp
    print 'Enter the publisher: '
    publisher = gets.chomp
    print 'Enter the cover state: '
    cover_state = gets.chomp
    print 'Enter the publish year: '
    publish_date = gets.chomp.to_i
    new_book = Book.new(title, publisher, cover_state, publish_date)
    puts "The book is created successfuly\n\n"
    new_book
  end
end
