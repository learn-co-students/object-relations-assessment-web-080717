class Customer
  attr_accessor :first_name, :last_name
  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.detect {|customer| customer.full_name === name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name === first_name}
  end

  def self.all_names
    self.all.map {|character| character.full_name}
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

end
