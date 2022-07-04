class Source
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @name = name
    @items = []
    @id = Random.rand(1..500_000)
  end

  def add_source(item)
    @item << item
    item.source = self
  end
end
