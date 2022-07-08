class ListGames
  def list_games(games)
    if games.empty?
      puts 'No Games to be displayed'
    else
      puts "#{games.count} Games Found!"
      games.each do |game|
        puts "Players: #{game.multiplayer}" \
             "-Last Played: #{game.last_played_at} - Published: #{game.publish_date}"
      end
    end
  end

  # def show_labels_list(labels)
  #  puts "\tList of Labels: "
  #  puts 'There is no label in the list. Please add a label!' if labels.length.zero?
  #  labels.each_with_index do |label, index|
  #    puts "\t#{index + 1}. Title: #{label.title}, Color: #{label.color}"
end
