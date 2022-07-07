module SaveAuthorData
  def save_author(authors)
    saved_author = []
    authors.each do |author|
      saved_author << {
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    File.write('./data/author.json', JSON.generate(saved_author))
  end
end
