require_relative 'movie'
class CreateMovie
  def create_movie(movies, sources)
    print "\nEnter Movie name: "
    name = gets.chomp
    print 'Enter Published Date: '
    publish_date = gets.chomp
    print 'silent? [y/n]:'
    silent = gets.chomp != 'n'
    print 'Archived? [y/n]:'
    archived = gets.chomp != 'n'
    print 'Enter source:'
    source = gets.chomp
    new_movie = Movie.new(publish_date: publish_date, silent: silent, archived: archived, name: name)
    new_source = Source.new(source)
    movies << new_movie
    sources << new_source
    puts "The movie is created successfuly\n\n"
  end
end
