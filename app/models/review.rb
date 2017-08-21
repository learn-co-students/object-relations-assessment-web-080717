class Review
  attr_reader :customer, :restaurant, :content

  ALL = []

  def initialize(params={})
    params.each { |k,v| send("#{k}=", v)}
    ALL << self
  end

  def self.all
    ALL
  end

# testing only
  def self.clear_all
    ALL.clear
  end

  private
    attr_writer :customer, :restaurant, :content
end
