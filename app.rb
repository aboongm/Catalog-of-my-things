require 'json'
require_relative './lib/list_items'
require_relative './lib/create_book'
require_relative './modules/save_books'
require_relative './modules/load_books'
require_relative './lib/label'

class App
  attr_accessor :books, :labels
  attr_reader :music_albums, :genres

  include SaveBookData
  include LoadBookData

  def initialize
    @books = load_books
    @labels = load_labels
    @list_items = ListItems.new
    @music_albums = []
    @genres = []
  end

  def start
    loop do
      puts '
    Please choose an option by entering a number:
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
      puts 'list all music albums'
    when '3'
      puts 'List all movies'
    when '4'
      puts 'List all games'
    when '5'
      puts 'List all genres'
    when '6'
      puts 'List all authors'
    when '7'
      puts 'List all sources'
    when '8'
      @list_items.show_labels_list(@labels)
    when '9'
      CreateBook.new.create_book(@books, @labels)
    when '10'
      puts 'Add a music album'
    when '11'
      puts 'Add a movie'
    when '12'
      puts 'Add a game'
    when '13'
      save_data(@books, @labels)
      puts 'Thank you for using The App, Bye...'
      exit
    else
      puts 'Invalid option'
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
