require 'json'
require_relative './lib/list_items'
require_relative './lib/create_book'
require_relative './modules/save_books'
require_relative './modules/load_books'
require_relative './lib/label'
require_relative './lib/create_movie'
require_relative './modules/save_movies'
require_relative './modules/load_movies'
require_relative './lib/list_movies'
require_relative './lib/source'

class App
  attr_accessor :books, :labels, :movies, :source
  attr_reader :music_albums, :genres

  include SaveBookData
  include LoadBookData
  include SaveMoviesData
  include LoadMovieData
  def initialize
    @books = load_books
    @labels = load_labels
    @list_items = ListItems.new
    @music_albums = []
    @genres = []
    @movies = [] || load_movies
    @source = [] || load_source
    @list_movies = ListMovies.new
  end

  def start
    loop do
      puts "
      \tPlease Choose An Option [1-5]:
      \t1 - Books
      \t2 - Music Albums
      \t3 - Games
      \t4 - Movies
      \t5 - Exit"
      puts "\tPlease select an option from the list above: "
      input = gets.chomp
      options(input)
    end
  end

  # rubocop:disable Metrics
  def options(input)
    case input
    when '1'
      puts "
    \tPlease Choose An Option [1-3]:
      \t1. List Books
      \t2. List Labels
      \t3. Add Book"
      book_option = gets.chomp
      case book_option
      when '1'
        @list_items.show_books_list(@books)
      when '2'
        @list_items.show_labels_list(@labels)
      when '3'
        CreateBook.new.create_book(@books, @labels)
      else
        puts "\tInvalid Option!"
      end
    when '2'
      puts "
    \tPlease Choose An Option [1-3]:
      \t1. List Music Albums
      \t2. List Genres
      \t3. Add Music Album"
      music_option = gets.chomp
      case music_option
      when '1'
        puts 'list Music Albums'
      when '2'
        puts 'list Genres'
      when '3'
        puts 'Add music album'
      else
        puts "\tInvalid Option!"
      end
    when '3'
      puts "
    \tPlease Choose An Option [1-3]:
      \t1. List Games
      \t2. List Authors
      \t3. Add Game"
      game_option = gets.chomp
      case game_option
      when '1'
        puts 'list Games'
      when '2'
        puts 'list Authors'
      when '3'
        puts 'Add Games'
      else
        puts "\tInvalid Option!"
      end
    when '4'
      puts "
    \tPlease Choose An Option [1-3]:
      \t1. List Movies
      \t2. List Sources
      \t3. Add Movie"
      movie_option = gets.chomp
      case movie_option
      when '1'
        @list_movies.show_movie_list(@movies)
      when '2'
        @list_movies.show_source_list(@source)
      when '3'
        CreateMovie.new.create_movie(@movies, @source)
      else
        puts "\tInvalid Option!"
      end
    when '5'
      save_data(@books, @labels)
      save_movie_data(@movies, @source)
      puts "\tThank you for using The App, Bye..."
      exit
    else
      puts "\tInvalid option"
    end
  end

  # rubocop:enable Metrics
  def create_music_album
    puts 'when was the album published? [yyyy-mm-dd]: '
    date_published = gets.chomp
    puts 'is album on spotify? [Y/N]: '
    ans = gets.chomp.downcase
    on_spotify = input_to_boolean(ans)
    @music_album = MusicAlbum.new(date_published, on_spotify: on_spotify)
    puts 'Music album created!'
    @music_album
  end

  def create_genre
    puts "Please type name of genre\n"
    name = gets.chomp
    if @genres.include?(name)
      puts "#{name} exists already"
    else
      genre = Genre.new(name)
      puts 'genre created successfully'
      genre
    end
  end

  def add_genre(genre)
    @genres << genre.name unless @genres.include?(genre.name)
  end

  def add_music_album(record)
    @music_albums << record
  end

  def input_to_boolean(input)
    case input
    when 'y'
      true
    when 'n'
      false
    else
      puts 'invalid response'
      input_to_boolean(input)
    end
  end
end
