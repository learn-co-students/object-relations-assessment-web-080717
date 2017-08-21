# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name
  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.detect {|customer| customer.full_name === name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name === first_name}
  end

  def self.all_names
    self.all.map {|character| character.full_name}
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

end

class Review
  ALL = []
  attr_accessor :content, :customer, :restaurant

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    ALL
  end

end

class Restaurant
  attr_accessor :name
  ALL = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.detect {|restaurant| restaurant.name === name}
  end

  def reviews
    Review.all.select {|review| review.restaurant === self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

end
