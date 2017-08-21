# Please copy/paste all three classes into this file to submit your solution!
class Restaurant
  attr_accessor :name
  @@restaurant = []
    def initialize(name)
      @name = name
      @@restaurant << self
    end

    def self.all
      @@restaurant
    end

    def self.find_by_name(name)
      # given a string of restaurant name, returns the first restaurant that matches
      Restaurant.all.find do |rest|
        rest.name == self
      end
    end

    def reviews
      self.review.collect do |rev|
        rev.name
      end
    end

    def customers
      Customer.all.select do |customer|
        customer.review == self
      end
    end
end

class Customer
  attr_accessor :first_name, :last_name, :restaurant, :review
  @@all = []
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

  def self.find_by_name
    Customer.all.find do |name|
      name.full_name.to_s == self
    end
    end

  def self.find_all_by_first_name(first_name)
    Customer.all.find do |name|
      name.first_name = self
    end
  end

  def self.all_names
    self.collect{|name| name.full_name.to_s}
  end

  def add_review(title, body)
    Review.new(title, body, self)
  end
end
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
