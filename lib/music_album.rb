class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date, archived)
    super(publish_date, archived)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    false unless archived == true && @on_spotify == true
  end
end
