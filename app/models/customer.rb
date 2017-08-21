class Customer

  ALL = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    namearray = name.split
    # first_name = namearray[0]
    # last_name = namearray[1]
    self.all.find do |customer|
      customer.first_name == namearray.first && customer.last_name == namearray.last
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
  end
end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant,content)
    Review.new(self,restaurant,content)
  end

end
