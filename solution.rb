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
    Customer.all.select do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end
end

##END CUSTOMER

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
    Restaurant.all.select do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end

end

##END RESTAURANT

class Review
  attr_accessor :customer, :restaurant, :content

  ALL = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

end
