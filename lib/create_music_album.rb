def create_music_album
  print 'when was the album published? [yyyy-mm-dd]: '
  date_published = gets.chomp
  puts 'is album on spotify? [Y/N]: '
  ans = gets.chomp.downcase
  on_spotify = input_to_boolean(ans)
  puts 'what genre does this album fall under?'
  genre_name = gets.chomp
  @music_album = MusicAlbum.new(date_published, false, on_spotify: on_spotify)
  @music_album.add_genre(Genre.new(genre_name))
  add_genre(Genre.new(genre_name))
  puts 'Music album created!'
  @music_album
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
    print 'is album on spotify? [Y/N]: '
    input_to_boolean(gets.chomp)
  end
end

def add_genre(genre)
  return if @genre_names.include?(genre.name)

  @genres << genre
  @genre_names << genre.name
end
