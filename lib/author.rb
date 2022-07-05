require 'securerandom'

class Author
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = SecureRandom.uuid
    @first_name = first_name
    @last_name = last_name
    @item = []
  end

  def add_item(item)
    @item << item
    item.author = self
  end
end
