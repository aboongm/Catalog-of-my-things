require 'json'
require_relative './lib/list_items'
require_relative './lib/create_book'
require_relative './modules/save_books'
require_relative './modules/load_books'
require_relative './lib/label'
require_relative './lib/music_album'
require_relative './lib/genre'
require_relative './lib/create_music_album'
require_relative './lib/list_music_data'
require_relative './modules/load_author'
require_relative './modules/load_game'
require_relative './lib/list_games'
require_relative './lib/list_author'
require_relative './modules/save_games'
require_relative './lib/author'
require_relative './modules/save_music_album'
require_relative './modules/load_music_album'
require_relative './lib/create_movie'
require_relative './modules/save_movies'
require_relative './modules/load_movies'
require_relative './lib/list_movies'
require_relative './lib/source'

class App
  attr_accessor :books, :labels, :movies, :source, :authors, :games
  attr_reader :music_albums, :genres

  include SaveBookData
  include LoadBookData
  include LoadMusicData
  include SaveMusicData
  include GameModule
  include SaveGameData
  include AuthorModule

  include SaveMoviesData
  include LoadMovieData
  def initialize
    @books = load_books
    @labels = load_labels
    @list_items = ListItems.new
    @music_albums = load_music_albums
    @genre_names = load_genres_names
    @genres = load_music_genres
    @games = fetch_games
    @authors = fetch_authors
    @movies = load_movies
    @sources = load_source
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
        list_music_albums
      when '2'
        list_genres
      when '3'
        add_music_album(@music_albums, create_music_album)
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
        ListGames.new.list_games(@games)
      when '2'
        ListAuthor.new.list_authors(@authors)
      when '3'
        create_game(@games)
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
        @list_movies.show_source_list(@sources)
      when '3'
        CreateMovie.new.create_movie(@movies, @sources)
      else
        puts "\tInvalid Option!"
      end
    when '5'
      save_data(@books, @labels)
      save_music_data(@music_albums, @genres, @genre_names)
      save_games_data(@games,@authors)
      save_movie_data(@movies, @sources)
      puts "\tThank you for using The App, Bye..."
      exit
    else
      puts "\tInvalid option"
    end
  end
  # rubocop:enable Metrics
end
