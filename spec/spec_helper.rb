require "./config/environment.rb"

RSpec.configure do |config|
  config.before(:each) do
    Restaurant.clear_all
    Customer.clear_all
    Review.clear_all
  end
end
