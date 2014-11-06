require 'rails_helper'

RSpec.describe User, :type => :model do

  it "is valid factory for :user" do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it "check empty user email" do
    user = FactoryGirl.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "check empty user password" do
    user = FactoryGirl.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "check uniq email for user" do
    attrs = FactoryGirl.attributes_for(:user)
    User.create(attrs)
    user  = User.new(attrs)
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it "check password too short" do
    user = FactoryGirl.build(:user, password: '12')
    user.valid?
    expect(user.errors[:password]).to include("is too short (minimum is 4 characters)")
  end

end
