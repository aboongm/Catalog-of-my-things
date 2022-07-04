require 'date'

class Item
  attr_accessor :publish_date, :archived, :id
  attr_reader :genre, :author, :source, :label

  def initialize(publish_date, id = Random.rand(1..5000), archived: false)
    @id = id
    @publish_date = publish_date
    @archived = archived
  end

  def label=(label)
    @label = label
    @label.items.push(self) unless @label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    false unless Date.today.year - Date.parse(@publish_date).year > 10
  end
end
