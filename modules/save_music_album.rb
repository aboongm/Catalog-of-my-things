def save_music_albums(albums)
    File.write('./data/music_album.rb', JSON.generate(albums))
end
