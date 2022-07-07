require_relative 'item'
class Movie < Item
  # attr_accessor :silent, :name

  # def initialize(publish_date:, silent:, archived: false, name: 'unknown')
  #   super(publish_date: publish_date, archived: archived)
  #   @silent = silent
  #   @name = name
  # end

  attr_accessor :silent, :name

  def initialize(publish_date, silent, archived, name = 'unknown')
    super(publish_date, archived)
    @silent = silent
    @name = name
  end

  def can_be_archived?
    super() || @silent
  end
end
