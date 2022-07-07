require 'json'
require_relative '../lib/games'

module GameModule
  def add_game(games, game)
    games.push(game)
  end

  def fetch_games
    game_db = './data/games.json'
    games = []

    if File.exist?(game_db)
      if File.empty?(game_db)
        games
      else
        saved_games = JSON.parse(File.read(game_db))
        saved_games.each { |game| games << Game.new(game['multiplayer'], game['last_played_at'], game['publish_date']) }
      end
    else
      games
    end
  end

  def create_game(games)
    print 'Enter number of players: '
    multiplayer = gets.chomp

    print 'Enter Last Played Date format[yyyy-mm-dd]: '
    last_played_at = gets.chomp

    print 'Enter Date Published format[yyyy-mm-dd]: '
    publish_date = gets.chomp

    print 'Enter Author\'s first name: '
    first_name = gets.chomp

    print 'Enter Author\'s last name: '
    last_name = gets.chomp

    new_game = Game.new(multiplayer, last_played_at, publish_date)
    new_author = Author.new(first_name, last_name)
    new_game.add_author(new_author)
    add_game(games, new_game)
    add_author(@authors, new_author)
    puts 'Game created successfully'
  rescue StandardError
    puts 'Cannot create game, check your Input format'
  end

  def add_author(authors, author)
    authors.push(author)
  end
end
