require 'pry'
class Restaurant
  attr_accessor :name, :review, :customer

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name}
  end

  def reviews
    a=Review.all.map { |restaurant| restaurant.name ==self }
    binding.pry
    a.map { |r| r.review }
  end

  def customers

  end





end
