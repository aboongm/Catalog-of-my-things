module SaveGameData
  def save_games_data(games, authors)
    save_games(games)
    save_author(authors)
  end

  def save_games(games)
    saved_games = []
    games.each do |game|
      saved_games << {
        multiplayer: game.multiplayer,
        last_played_at: game.last_played_at,
        publish_date: game.publish_date
      }
    end
    File.write('./data/games.json', JSON.generate(saved_games))
  end

  def save_author(authors)
    saved_author = []
    authors.each do |author|
      saved_author << {
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    File.write('./data/author.json', JSON.generate(saved_author))
  end
end
