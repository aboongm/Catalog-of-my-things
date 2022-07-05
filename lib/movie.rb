require_relative 'item'

class Movie < Item
  attr_accessor :silent

  def initialize(source, archived, silent)
    super(source, archived: archived)
    @silent = silent
  end

  def can_be_archived?
    @silent
  end
end
