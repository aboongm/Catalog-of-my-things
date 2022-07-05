module SaveBookData
  def save_data(books)
    save_books(books)
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
end
