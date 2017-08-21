class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self  #ensuring that all customers are added to class collection
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all #customer all to return all customer instances
    @@all
  end

  def self.find_by_name(name)
    Customer.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end


end
