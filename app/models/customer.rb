class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.find_by_name(fullName)
    nameArray = fullName.split
    Customer.all.select do |customer|
      customer.first_name == nameArray[0] && customer.last_name == nameArray[1]
    end
  end

  def self.all_names
    Customer.all.collect do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content)
    r = Review.new(content)
    r.customer = self
    r.restaurant = restaurant
  end
end
