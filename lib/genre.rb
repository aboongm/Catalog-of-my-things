class Genre
  attr_accessor :name, :id
  attr_reader :items

  def initialize(name)
    @name = name
    @items = []
    @id = Random.rand(1..5000)
  end

  def add_item(item)
    @items << item
    item.add_genre(self)
  end
end
