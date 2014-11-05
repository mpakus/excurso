require 'rails_helper'

RSpec.describe ToursHelper, :type => :helper do

  describe "human state" do
    it "return html decoration for :draft state" do
      expect(helper.human_state('draft')).to eq('<span class="label label-default">draft</span')
    end

    it "return html decoration for :published state" do
      expect(helper.human_state('published')).to eq('<span class="label label-success">published</span')
    end
  end

end
