require 'pry'


class Customer
  attr_accessor :first_name, :last_name, :review

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

  def self.find_by_name(name)
    first, last = name.split(" ")
    self.all.find { |customer| customer.first_name == first && customer.last_name == last }
  end

  def self.all_names
    self.all.map { |customer| customer.full_name }
  end


  def add_review(restaurant, content)
        Restaurant.all.find { |restaurant| restaurant.name == restaurant }
        review = Review.new(content)
        review.customer = self

  end





end
