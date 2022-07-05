class ListItems
  def show_books_list(books)
    puts "\nList of Books: "
    puts 'There is no book in the list. Please add a book!' if books.length.zero?
    books.each_with_index do |book, index|
      puts "#{index + 1}. \t#{book.title} was published in the year #{book.publish_date}
      \tby the publisher #{book.publisher}"
    end
    puts "\n"
  end

  def show_labels_list(labels)
    puts "\nList of Labels: "
    puts 'There is no label in the list. Please add a label!' if labels.length.zero?
    labels.each_with_index do |label, index|
      puts "#{index + 1}. Title: #{label.title}, Color: #{label.color}"
    end
    puts "\n"
  end
end
