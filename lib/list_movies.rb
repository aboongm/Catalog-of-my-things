class ListMovies
  def show_movie_list(movies)
    puts "\nList of Movies: "
    puts 'There is no Movie in the list.' if movies.length.zero?
    movies.each do |movie|
      puts " was published in the year #{movie.publish_date}"
    end
    puts "\n"
  end

  def show_source_list(sources)
    puts "\nList of Sources: "
    puts 'There is no sources in the list. Please add a source!' if sources.length.zero?
    source.each_with_index do |source, index|
      puts "#{index + 1}. Title: #{source.title}, Color: #{source.color}"
    end
    puts "\n"
  end
end
