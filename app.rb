require 'json'
require_relative './lib/list_items'
require_relative './lib/create_book'
require_relative './modules/save_books'


class App
  attr_accessor :books, :labels

  include SaveBookData
  def initialize
    @books = []
    @labels = []
    @list_items = ListItems.new
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
      @books << CreateBook.new.create_book
    when '10'
      puts 'Add a music album'
    when '11'
      puts 'Add a movie'
    when '12'
      puts 'Add a game'
    when '13'
      save_data(@books)
      puts 'Thank you for using The App, Bye...'
      exit
    else
      puts 'Invalid option'
    end
  end
  # rubocop:enable Metrics
end
