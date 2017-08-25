class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
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



class Review

@@all = []

attr_accessor :restaurant, :customer

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def content
    @content
  end


end


class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end


  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name}
  end


  def self.find_all_by_first_name(first_name)
    self.all.find_all { |customer| customer.first_name == first_name }
  end

  def self.all_names
    Customer.all.collect do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, customer)
    new_review = Review.new(restaurant, content, self)
  end


end
