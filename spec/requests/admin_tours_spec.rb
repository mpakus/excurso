require 'rails_helper'

RSpec.describe "Admin::Tours", :type => :request do
  describe "GET /admin" do
    it "check redirect" do
      get admin_path
      expect(response).to have_http_status(301)
      expect(response).to redirect_to(admin_tours_path)
    end
  end
end
