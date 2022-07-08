class ListAuthor
  def list_authors(authors)
    if authors.empty?
      puts 'No Authors to be displayed'
    else
      puts "#{authors.count} Authors Found!"
      authors.each do |author|
        puts "First Name: #{author.first_name} - Last Name: #{author.last_name}"
      end
    end
  end
end
