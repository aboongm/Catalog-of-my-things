module LoadMovieData
  def load_movies
    if File.exist?('./data/movies.json')
      saved_movies = JSON.parse(File.read('./data/movies.json'))
      movies = []
      saved_movies.each do |movie|
        movies << Movie.new(movie['publish_date', movie['silent'], movie['archived', movie['name']]])
      end
      movies
    else
      File.write('./data/movies.json', [])
    end
  end

  def load_source
    if File.exist?('./data/source.json')
      saved_labels = JSON.parse(File.read('./data/source.json'))
      labels = []
      saved_labels.each do |source|
        labels << Source.new(source['source'])
      end
      labels
    else
      File.write('./data/source.json', [])
    end
  end
end
