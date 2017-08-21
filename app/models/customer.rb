class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews #helper method so to access the Reviews class array, the SSoT for this domain.
    Review.all
  end

  def self.all
    reviews.map{|review| review.customer} #Iterates through the reviews array, returning the customer object for each review.
  end

  def self.find_by_name(name) #Iterates through the reviews array and returns the first review that has a customer with a full name return value as the entered name.
    reviews.find{|review| review.customer.full_name == name}
  end

  def self.find_all_by_first_name(first_name) #Same as above but returns all the reviews that have a customer first name value as the entered.
    reviews.select{|review| review.customer.first_name == first_name}
  end

  def self.all_names #returns an array of all reviews customer attributes full names. A review cannot exist without a customer.
    reviews.map{|review| review.customer.full_name}
  end

  def add_review(restaurant, content) #Creates a Review object, by passing the customer object itself, a restaurant object, and content, which could be a string.
    Review.new(self, restaurant, content)
  end

end
