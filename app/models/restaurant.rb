require "pry"
class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @reviews = []
  end

  def reviews
    @reviews
  end

  def add_review(review)
    @reviews << review
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|restaurant| restaurant.name == name}
  end

  def customers #return all customers who have written reviews of the restaurant
    self.reviews.map do |review|
      review.customer
    end
  end

end
