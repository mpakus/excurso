require 'rails_helper'

RSpec.describe Category, :type => :model do

  it "is valid factory for :category" do
    expect(FactoryGirl.create(:category)).to be_valid
  end

  it "checks empty category name" do
    category = FactoryGirl.build(:category, name: nil)
    category.valid?
    expect(category.errors[:name]).to include("can't be blank")
  end

  it "checks uniq name for category" do
    attrs = FactoryGirl.attributes_for(:category)
    Category.create(attrs)
    category  = Category.new(attrs)
    category.valid?
    expect(category.errors[:name]).to include("has already been taken")
  end

end
