class Item
  attr_accessor :publish_date, :archived, :id
  attr_reader :genre, :author, :source, :label

  def initialize(publish_date, id = Random.rand(1..5000), archived: false)
    @id = id
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    puts 'to be implemented'
  end

  def move_to_archive
    puts 'to be implemented'
  end
end
