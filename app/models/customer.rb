class Customer

  @@all = []

  attr_accessor :first_name, :last_name

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
    self.all.find { |customer| customer.full_name == name}
  end


  def self.find_all_by_first_name(first_name)
    self.all.find_all { |customer| customer.first_name == first_name }
  end

  def self.all_names
    Customer.all.collect do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, customer)
    new_review = Review.new(restaurant, content, self)
  end


end
