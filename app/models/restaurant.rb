class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def all_reviews #Roughly the same as the Customer class, just minus the ability to create Review objects.
    Review.all
  end

  def self.all
    all_reviews.map{|review| review.restaurant} #Iterates through the Reviews class ALL array, and rerturns an array of the resturant objects that have reviews.
  end

  def self.find_by_name(name)
    all_reviews.find{|review| review.restaurant.name == name }#Iterates and returns the first resturant object that has a name value equal to what is passed to this method.
  end

  def reviews
    all_reviews.select{|review| review.restaurant == self} #Iterates through the Reviews array, returns only the review objects that have a restaurant variable value equal to itself.
  end

  def customers
    reviews.map{|review| review.customer} #Iterates through the reviews array containing on the reviews of this restaurant, and returns an array of the customer values of those reviews.
  end


end
