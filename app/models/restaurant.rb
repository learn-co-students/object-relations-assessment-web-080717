#has many reviews
#Restaurant - customer many-many

require "pry"

class Restaurant

  RESTAURANTS = []

  attr_accessor :name

  def initialize(name)
    @name = name
    RESTAURANTS << self
  end

  def self.all
    RESTAURANTS
  end



end
