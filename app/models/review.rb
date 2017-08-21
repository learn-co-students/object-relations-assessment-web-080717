class Review
  @@all = []
  attr_accessor :title, :body, :customer, :restaurant

  def initialize(title, body)
    @title = title
    @body = body
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Review.all.select {|review| review.customer == self}
  end

  def review
    Review.all.select {|review| review.restaurant == self}
  end

  end


# Review.all
# returns all of the reviews
# Review#customer
# returns the customer for that given review
# Review#restaurant
# returns the restaurant for that given review
