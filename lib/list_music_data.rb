def list_music_albums
  @music_albums.each { |a| puts "id: #{a.id}, genre: #{a.genre.name}, date-published: #{a.publish_date}" }
end

def list_genres
  @genres.each do |g|
    if g == @genres[@genres.length - 1]
      puts g.name.to_s
    else
      print "#{g.name}, "
    end
  end
end
