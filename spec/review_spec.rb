require "spec_helper"

describe Review do
  context "initialize" do
    it "initialize with restaurant and customer" do
      r = Restaurant.new
      c = Customer.new
      Review.new(customer: c, restaurant: r)

    end
  end

  context "#customer" do
    it "returns the customer instance for this review" do
      r = Restaurant.new
      c = Customer.new
      review = Review.new(customer: c, restaurant: r)
      expect(review.customer).to eq(c)
    end
  end

  context "#restaurant" do
    it "returns the restaurant instance for this review" do
      r = Restaurant.new
      c = Customer.new
      review = Review.new(customer: c, restaurant: r)
      expect(review.restaurant).to eq(r)
    end
  end

  context ".all" do
    it "returns array of all reviews" do
      Review.new(customer: Customer.new, restaurant: Restaurant.new)
      Review.new(customer: Customer.new, restaurant: Restaurant.new)
      Review.new(customer: Customer.new, restaurant: Restaurant.new)
      expect(Review.all.length).to eq(3)
    end
  end

end
