class Review
  attr_accessor :customer, :restaurant, :content
  ALL = [] #Contains all of the review objects. Source of the single truth for this domain. A review can not exist without both a customer and restaurant.
  def initialize(customer, restaurant, content) #A review object is initialized with a customer object, restaurant object, and content.
    @customer = customer
    @restaurant = restaurant
    @content = content
    ALL << self #At initialization, the Review object adds itself to the ALL class array, containing all review objects.
  end

  def self.all # Returns the ALL class array.
    ALL
  end

end
