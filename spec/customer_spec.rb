require "spec_helper"

describe Customer do
  context "initialize" do
    it "optionally initializes with first_name and last_name" do
      c = Customer.new(first_name: "John", last_name: "Smith")
      expect(c.first_name).to eq("John")
      expect(c.last_name).to eq("Smith")
    end
  end

  context ".all" do
    it "returns an array of all customers" do
      c = Customer.new(first_name: "John", last_name: "Smith")
      d = Customer.new(first_name: "Jake", last_name: "Smith")
      expect(Customer.all).to eq([c, d])
    end
  end

  context ".find_by_name" do
    it "given a string of a full name, returns the first customer whose full name matches" do
      c = Customer.new(first_name: "John", last_name: "Smith")
      d = Customer.new(first_name: "Jake", last_name: "Smith")
      expect(Customer.find_by_name("John Smith")).to eq(c)
      expect(Customer.find_by_name("Jake Smith")).to eq(d)
    end
  end


  context ".find_all_by_first_name" do
    it "given a string of a first name, returns an array containing all customers with that first name" do
      c = Customer.new(first_name: "John")
      Customer.new(first_name: "Joe")
      e = Customer.new(first_name: "John")
      expect(Customer.find_all_by_first_name("John")).to eq([c,e])
    end
  end

  context ".all_names" do
    it "should return an array of all of the customer full names" do
      Customer.new(first_name: "John", last_name: "Smith")
      Customer.new(first_name: "Jake", last_name: "Smith")
      expect(Customer.all_names).to eq(["John Smith", "Jake Smith"])
    end
  end

  context "#full_name" do
    it "returns full name as a single string" do
      c = Customer.new(first_name: "John", last_name: "Smith")
      expect(c.full_name).to eq("John Smith")
    end
  end

  context "#add_review" do
    it "given some content and a restaurant, creates a new review and associates it with that customer and that restaurant" do
      c = Customer.new
      r = Restaurant.new
      review = Review.new(customer: c, restaurant:r, content:"Great atmosphere")
      expect(Review.all).to eq([review])
    end
  end
end
