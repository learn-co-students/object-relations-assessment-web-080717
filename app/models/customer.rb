require "pry"

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
