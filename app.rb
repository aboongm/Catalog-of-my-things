require 'json'
require_relative './lib/list_items'
require_relative './lib/create_book'
require_relative './modules/save_books'
require_relative './modules/load_books'
require_relative './modules/save_music_album'
require_relative './modules/load_music_album'
require_relative './lib/label'
require_relative './lib/music_album'
require_relative './lib/genre'
require_relative './lib/create_music_album'
require_relative './lib/list_music_data'

class App
  attr_accessor :books, :labels
  attr_reader :music_albums, :genres

  include SaveBookData
  include LoadBookData
  include LoadMusicData
  include SaveMusicData

  def initialize
    @books = load_books
    @labels = load_labels
    @list_items = ListItems.new
    @music_albums = load_music_albums
    @genre_names = load_genres_names
    @genres = load_music_genres
  end

  def start
    loop do
      puts 'Please choose an option by entering a number:
     1 - List all books
     2 - List all music albums
     3 - List all movies
     4 - List all games
     5 - List all genres
     6 - List all authors
     7 - List all sources
     8 - List all labels
     9 - Add a book
     10 - Add a music album
     11 - Add a movie
     12 - Add a game
     13 - Exit'
      puts ' Please select an option from the list above: '
      input = gets.chomp
      options(input)
    end
  end

  # rubocop:disable Metrics

  def options(input)
    case input
    when '1'
      @list_items.show_books_list(@books)
    when '2'
      list_music_albums
    when '3'
      puts 'List all movies'
    when '4'
      puts 'List all games'
    when '5'
      list_genres
    when '6'
      puts 'List all authors'
    when '7'
      puts 'List all sources'
    when '8'
      @list_items.show_labels_list(@labels)
    when '9'
      @books << CreateBook.new.create_book
    when '10'
      add_music_album(@music_albums, create_music_album)
    when '11'
      puts 'Add a movie'
    when '12'
      puts 'Add a game'
    when '13'
      save_data(@books)
      save_music_data(@music_albums, @genres, @genre_names)
      puts 'Thank you for using The App, Bye...'
      exit
    else
      puts 'Invalid option'
    end
  end

  # rubocop:enable Metrics
end
