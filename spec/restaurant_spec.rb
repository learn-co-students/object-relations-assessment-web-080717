require "spec_helper"

describe Restaurant do
  context "initialize" do
    it "optionally initializes with name" do
      r = Restaurant.new(name: "McDs")
      expect(r.name).to eq("McDs")
    end
  end

  context ".all" do
    it "returns an array of all Restaurant instances" do
      r = Restaurant.new
      s = Restaurant.new
      t = Restaurant.new
      expect(Restaurant.all).to eq([r,s,t])
    end
  end

  context ".find_by_name" do
    it "given a string of restaurant name, returns the first restaurant that matches" do
      r = Restaurant.new(name: "McDs")
      Restaurant.new(name: "BurgerKing")
      expect(Restaurant.find_by_name("McDs")).to eq(r)
    end
  end

  context "#reviews" do
    it "returns an array of all reviews for that restaurant" do
      r = Restaurant.new
      s = Restaurant.new
      Review.new(restaurant: r, customer: Customer.new)
      Review.new(restaurant: s, customer: Customer.new)
      Review.new(restaurant: r, customer: Customer.new)
      Review.new(restaurant: r, customer: Customer.new)
      Review.new(restaurant: s, customer: Customer.new)
      expect(r.reviews.length).to eq(3)
      expect(s.reviews.length).to eq(2)
    end
  end

  context "#customers" do
    it "should return all of the customers who have written reviews of that restaurant" do
      c = Customer.new
      d = Customer.new
      r = Restaurant.new
      Review.new(restaurant: r, customer: c)
      Review.new(restaurant: r, customer: d)
      expect(r.customers).to eq([c,d])
    end
  end
end
