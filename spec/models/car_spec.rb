require 'spec_helper'

describe "mock_model('Car') with no Car constant in existence" do
  it "generates a constant" do
    expect(Object.const_defined?(:Car)).to be_falsey
    mock_model("Car")
    expect(Object.const_defined?(:Car)).to be_truthy
  end

  describe "generates an object that ..." do
    it "returns the correct name" do
      car = mock_model("Car")
      expect(car.class.name).to eq("Car")
    end

    it "says it is a Car" do
      car = mock_model("Car")
      expect(car).to be_a(Car)
    end
  end
end
