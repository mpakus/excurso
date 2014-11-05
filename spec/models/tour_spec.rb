require 'rails_helper'

RSpec.describe Tour, :type => :model do

  it "is valid factory for :tour" do
    expect(FactoryGirl.create(:tour)).to be_valid
  end

  it "check empty tour name" do
    tour = FactoryGirl.build(:tour, name: nil)
    tour.valid?
    expect(tour.errors[:name]).to include("can't be blank")
  end

  it "check have not city" do
    tour = FactoryGirl.build(:tour, city: nil)
    tour.valid?
    expect(tour.errors[:city]).to include("can't be blank")
  end

  it "set state to published when description full" do
    tour = FactoryGirl.create(:tour)
    expect(tour.state).to eq('published')
  end

  it "set state to draft if description nil" do
    tour = FactoryGirl.create(:tour, description: nil)
    expect(tour.state).to eq('draft')
  end

  it "creation published tours should increase city counter" do
    city = FactoryGirl.create(:city)
    FactoryGirl.create(:tour, city: city)
    expect(city.tours_count).to eq(1)
    FactoryGirl.create(:tour, city: city)
    expect(city.tours_count).to eq(2)
    FactoryGirl.create(:tour, city: city)
    expect(city.tours_count).to eq(3)
    FactoryGirl.create(:tour, city: city, description: nil)
    expect(city.tours_count).to eq(3)
  end

end
