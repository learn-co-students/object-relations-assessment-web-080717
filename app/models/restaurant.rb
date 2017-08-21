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

  #
  # Restaurant.all
  # returns an array of all restaurants
  # Restaurant.find_by_name(name)
  # given a string of restaurant name, returns the first restaurant that matches
  # Restaurant#reviews
  # returns an array of all reviews for that restaurant
  # Restaurant#customers
  # should return all of the customers who have written reviews of that restaurant.
