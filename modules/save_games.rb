module SaveGameData
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
end
