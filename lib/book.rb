require_relative 'item'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize
    super(publish_date, archived)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super && @cover_state == 'open'
  end
end
