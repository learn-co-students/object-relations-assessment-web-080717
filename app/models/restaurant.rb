class Restaurant
  attr_reader :name

  ALL = []

  def initialize(params = {})
    params.each { |k, v| send("#{k}=", v)}
    ALL << self
  end

  def self.find_by_name(restaurant_name)
    ALL.detect do |restaurant|
      restaurant.name == restaurant_name
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

  def self.all
    ALL
  end

# testing only
  def self.clear_all
    ALL.clear
  end

  private
    attr_writer :name
end
