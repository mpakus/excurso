require 'rails_helper'

RSpec.describe Cabinet::ToursController do

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  it "check how usual user can't access to :index" do
    sign_in FactoryGirl.create(:user)
    get :index
    expect(response).to have_http_status(302)
    expect(flash[:alert]).to include("You are not authorized to access this page.")
  end

  it "check how admin have access to :index" do
    sign_in FactoryGirl.create(:user_manager)
    get :index
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
  end

end