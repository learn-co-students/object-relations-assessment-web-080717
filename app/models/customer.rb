#has many reviews
#Restaurant - customer many-many
require "pry"

class Customer

  CUSTOMERS = []

  attr_accessor :first_name, :last_name, :reviews

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    CUSTOMERS << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    CUSTOMERS
  end


  def self.find_by_name(first_name, last_name)
    name = "#{first_name} #{last_name}"
    CUSTOMERS.select do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(first_name)
    CUSTOMERS.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    CUSTOMERS.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    @reviews << Review.new(self, content, restaurant)

  end

end
