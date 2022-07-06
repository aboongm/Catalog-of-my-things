class ListItems
  def show_books_list(books)
    puts "\tList of Books: "
    puts 'There is no book in the list. Please add a book!' if books.length.zero?
    books.each_with_index do |book, index|
      puts "\t#{index + 1}. Book Title: #{book.title}, Publish Year: #{book.publish_date}, Publisher: #{book.publisher}"
    end
  end

  def show_labels_list(labels)
    puts "\tList of Labels: "
    puts 'There is no label in the list. Please add a label!' if labels.length.zero?
    labels.each_with_index do |label, index|
      puts "\t#{index + 1}. Title: #{label.title}, Color: #{label.color}"
    end
  end
end
