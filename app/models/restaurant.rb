class Restaurant

  ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end
  end

end
