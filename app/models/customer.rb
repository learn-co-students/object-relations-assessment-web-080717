class Customer
  attr_accessor :first_name, :last_name

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

  def self.find_by_name(name)
  	self.all.detect do |nom|
  		nom.full_name == name 
  	end
  end

  def self.find_all_by_first_name(prenom)
  	self.all.select do |name|
  		name.first_name == prenom 
  	end
  end

  def self.all_names 
  	self.all.collect do |people|
  		people.full_name 
  	end
  end

  def add_review(restaurant, content)
  	Review.new(self, restaurant, content)
  end

end
