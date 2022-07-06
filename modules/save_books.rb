module SaveBookData
  def save_data(books, labels)
    save_books(books)
    save_labels(labels)
  end

  def save_books(books)
    saved_books = []
    books.each do |book|
      saved_books << {
        title: book.title,
        publisher: book.publisher,
        cover_state: book.cover_state,
        publish_date: book.publish_date
      }
    end
    File.write('./data/books.json', JSON.generate(saved_books))
  end

  def save_labels(labels)
    saved_labels = []
    labels.each do |label|
      saved_labels << {
        title: label.title,
        color: label.color
      }
    end
    File.write('./data/labels.json', JSON.generate(saved_labels))
  end
end
