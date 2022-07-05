module LoadBookData
  def load_books
    if File.exist?('./data/books.json')
      saved_books = JSON.parse(File.read('./data/books.json'))
      books = []
      saved_books.each do |book|
        books << Book.new(book['title'], book['publisher'], book['cover_state'], book['publish_date'])
      end
      books
    else
      File.write('./data/books.json', [])
    end
  end
end
