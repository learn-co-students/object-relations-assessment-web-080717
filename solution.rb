# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.detect do |customer|
      name == customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant: restaurant, customer: self, content: content)
  end

end

class Review
  attr_accessor :customer, :restaurant, :content
  ALL = []

  def initialize(customer:, restaurant:, content:)
    @customer = customer
    @restaurant = restaurant
    @content = content
    ALL << self
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
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.detect do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

 def customers
   reviews.collect do |review|
     review.customer
   end
 end

end
