require_relative 'item'

class Movie < Item
  attr_accessor :silent

  def initialize(name, publish_date, silent, archived: false)
    super(publish_date: publish_date, archived: archived, name: name)
    @silent = silent
  end

  def can_be_archived?
    super() || @silent
  end
end
