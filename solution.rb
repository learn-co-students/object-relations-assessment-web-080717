# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @reviews = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all #should return all customers
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.detect { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  def reviews
    @reviews
  end

  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content, self)
    new_review.customer = self
    @reviews << new_review
    new_review
  end
end

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

class Review
  attr_accessor :customer, :restaurant, :content
  @@all = []
  def initialize(restaurant, content, customer=nil)
    @restaurant = restaurant
    @content = content
    @customer = customer
    restaurant.add_review(self)
    @@all << self
  end

  def self.all
    @@all
  end
end
