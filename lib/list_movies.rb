class ListMovies
  def show_movie_list(movies)
    puts "\tList of Movies: "
    puts 'There is no Movie in the list.' if movies.length.zero?
    movies.each_with_index do |movie, index|
      puts "\t#{index + 1}. Name: #{movie.name}, Publish Date: #{movie.publish_date[:publish_date]}
      Silent: #{movie.silent}, Archived: #{movie.archived}"
    end
  end

  def show_source_list(sources)
    puts "\nList of Sources: "
    puts 'There is no sources in the list. Please add a source!' if sources.length.zero?
    sources.each_with_index do |source, index|
      puts "#{index + 1}. Name: #{source.name}"
    end
    puts "\n"
  end
end
