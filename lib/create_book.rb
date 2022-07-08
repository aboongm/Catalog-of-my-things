require_relative 'book'
require_relative 'label'

class CreateBook
  def create_book(books, labels)
    print "\nEnter a Book Title: "
    title = gets.chomp
    print 'Enter the Publisher: '
    publisher = gets.chomp
    print 'Enter the Cover State [Good or Bad]: '
    cover_state = gets.chomp.downcase
    print 'Enter the Publish Year: '
    publish_date = gets.chomp.to_i
    print 'Enter the Book Label Title: '
    label_title = gets.chomp
    print 'Enter the Book Label Color: '
    label_color = gets.chomp
    new_book = Book.new(title, publisher, cover_state, publish_date)
    new_label = Label.new(label_title, label_color)
    books << new_book
    labels << new_label
    puts "The book is created successfuly\n\n"
  end
end
