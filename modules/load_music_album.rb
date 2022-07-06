require 'json'

def load_music_albums
  albums = []
  if File.exist?('./data/music_album.json')
    if File.empty
      File.write('./data/music_album.json', [])
    else
      data = JSON.parse(File.read('./data/music_album.json'))
      data.each { |album| albums << album }
    end
  end
  albums
end
