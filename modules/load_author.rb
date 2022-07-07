require 'json'

module AuthorModule
  def fetch_authors
    author_db = './data/author.json'
    authors = []

    if File.exist?(author_db)
      if File.empty?(author_db)
        authors
      else
        saved_authors = JSON.parse(File.read(author_db))
        saved_authors.each { |author| authors << Author.new(author['first_name'], author['last_name']) }
      end

    end
    authors
  end
end
