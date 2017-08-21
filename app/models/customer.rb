class Customer
  attr_accessor :first_name, :last_name, :restaurant, :review
  @@all = []
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

  def self.find_by_name
    Customer.all.find do |name|
      name.full_name.to_s == self
    end
    end

  def self.find_all_by_first_name(first_name)
    Customer.all.find do |name|
      name.first_name = self
    end
  end

  def self.all_names
    self.collect{|name| name.full_name.to_s}
  end

  def add_review(title, body)
    Review.new(title, body, self)
  end
end
