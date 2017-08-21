class Customer
  attr_reader :first_name, :last_name

  ALL = []

  def initialize(params = {})
    params.each { |k,v| send("#{k}=", v)}
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    ALL.detect do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    ALL.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    ALL.map do |customer|
      customer.full_name
    end
  end

  def self.all
    ALL
  end

# testing only
  def self.clear_all
    ALL.clear
  end

  private
    attr_writer :first_name, :last_name
end
