require 'rails_helper'

RSpec.describe City, :type => :model do

  it "is valid factory for :city" do
    expect(FactoryGirl.create(:city)).to be_valid
  end

  it "checks empty city name" do
    city = FactoryGirl.build(:city, name: nil)
    city.valid?
    expect(city.errors[:name]).to include("can't be blank")
  end

  it "checks uniq name for city" do
    attrs = FactoryGirl.attributes_for(:city)
    City.create(attrs)
    city  = City.new(attrs)
    city.valid?
    expect(city.errors[:name]).to include("has already been taken")
  end

end
