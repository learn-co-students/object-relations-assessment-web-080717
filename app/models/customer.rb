class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    Review.all.collect do |review|
      review.customer
    end
  end


  def self.find_by_name(full_name)
    self.all.find do |name|
      full_name == name
    end
  end


  def self.find_all_by_first_name(first_name)
    whole_name = self.all.select do |name|
      first_name == name.split(" ")[0]
    end
    whole_name.split(" ")[0]
  end

  def self.all_names
    Customer.all.collect do |name|
      name
    end
  end

  def add_review(restaurant, content, customer)
    new_review = Review.new(restaurant, content, self)
  end


end
