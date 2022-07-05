class Source
  attr_accessor :name, :id, :items

  def initialize(name)
    @name = name
    @items = []
    @id = Random.rand(1..1000)
  end

  def add_source(item)
    @item << item
    item.source = self
  end
end
