module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryGirl.create(:user_admin)
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
    end
  end

  def login_manager
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:manager]
      user = FactoryGirl.create(:user_manager)
      sign_in user
    end
  end
end