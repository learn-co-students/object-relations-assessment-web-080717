class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    Review.all.collect do |review|
      review.restaurant
    end
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
