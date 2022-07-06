module SaveMoviesData
  def save_movie_data(movies)
    save_movie(movies)
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
end
