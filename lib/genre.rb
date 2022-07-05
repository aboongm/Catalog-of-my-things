class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @name = name
    @items = []
    @id = Random.rand(1..5000)
  end

  def add_item(item)
    @item << item
    item.genre = self
  end
end
