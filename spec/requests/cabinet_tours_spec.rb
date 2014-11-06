require 'rails_helper'

RSpec.describe "Cabinet::Tours", :type => :request do
  describe "GET /cabinet" do
    it "check redirect" do
      get cabinet_path
      expect(response).to have_http_status(301)
      expect(response).to redirect_to(cabinet_tours_path)
    end
  end
end
