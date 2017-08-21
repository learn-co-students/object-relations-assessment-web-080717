# Please copy/paste all three classes into this file to submit your solution!
class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find{|restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}
  end

end

class Review

  attr_accessor :customer, :restaurant, :content

  ALL = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content

    ALL << self
  end

  def self.all
    ALL
  end


end


class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self  #ensuring that all customers are added to class collection
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all #customer all to return all customer instances
    @@all
  end

  def self.find_by_name(name)
    Customer.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end


end
