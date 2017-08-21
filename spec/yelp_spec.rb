require "spec_helper"

describe "Customer" do
  let(:lauren) { Customer.new("Lauren", "Petersen")}
  let(:applebees) { Restaurant.new("Applebees")}

  it "should return all of the customers" do
    expect(Customer.all). to include(lauren)
  end

  it "should return an array of all of the customer full names" do
    expect(Customer.all_names). to include("Lauren Petersen")
  end

  it "given some content and a restaurant, creates a new review and
  associates it with that customer and that restaurant" do
    new_review = Review.new(applebees, "great", lauren)
    expect(new_review.customer).to eq(lauren)
    expect(applebees.reviews).to include(new_review)
  end
end

describe "Review" do
  let(:lauren) { Customer.new("Lauren", "Petersen")}
  let(:applebees) { Restaurant.new("Applebees")}
  let(:new_review) { Review.new(applebees, "wonderful", lauren)}

  it "should return all of the reviews" do
    expect(Review.all).to include(new_review)
  end

  it "should return the name of the customer" do
    expect(new_review.customer).to eq(lauren)
  end

  it "returns the restaurant for the given review" do
    expect(new_review.restaurant).to eq(applebees)
  end
end

describe "Restaurant" do
  let(:lauren) { Customer.new("Lauren Petersen")}
  let(:applebees) { Restaurant.new("Applebees")}
  let(:new_review) { Review.new(applebees, "wonderful", lauren)}

  it "should return all of the restaurants" do
    expect(Restaurant.all).to include(applebees)
  end

  it "should return an array of all reviews for that restaurant" do
    expect(applebees.reviews).to include(new_review)
  end

end
