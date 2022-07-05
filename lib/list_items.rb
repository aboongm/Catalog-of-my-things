class ListItems
  def show_books_list(books)
    puts "\nList of Books: "
    puts 'There is no book in the list. Please add a book!' if books.length.zero?
    books.each_with_index do |book, index|
      puts "#{index + 1}. #{book.title} was published in the year #{book.publish_date} by the publisher #{book.publisher}"
    end
    puts "\n"
  end

  def show_labels_list(labels)
    puts "\nList of Labels: "
    puts 'There is no label in the list. Please add a label!' if labels.length.zero?
    labels.each do |label|     
      puts "Title: #{label.title}, Color: #{label.color}"
    end
    puts "\n"
  end

end
