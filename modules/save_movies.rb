module SaveMoviesData
  def save_movie_data(movies, source)
    save_movie(movies)
    save_source(source)
  end

  def save_movie(movies)
    saved_movies = []
    movies.each do |movie|
      saved_movies << {
        publish_date: movie.publish_date,
        silent: movie.silent,
        archived: movie.archived,
        name: movie.name
      }
    end
    File.write('./data/movies.json', JSON.generate(saved_movies))
  end

  def save_source(sources)
    saved_source = []
    sources.each do |n_source|
      puts "n_source: #{n_source}"
      saved_source << {
        source: n_source.name
      }
    end
    File.write('./data/source.json', JSON.generate(saved_source))
  end
end
