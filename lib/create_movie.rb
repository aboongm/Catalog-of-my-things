require_relative 'movie'

class CreateMovie
  def create_movie
    print "\nEnter Movie name: "
    name = gets.chomp
    print 'Enter Published Date: '
    publish_date = gets.chomp
    print 'silent? [y/n]:'
    silent = gets.chomp != 'n'
    print 'Archived? [y/n]:'
    archived = gets.chomp != 'n'
    new_movie = Movie.new(publish_date: publish_date, silent: silent, archived: archived, name: name)
    puts "The movie is created successfuly\n\n"
    new_movie
  end
end
