class Cabinet::ApplicationController <  ApplicationController
  before_action :authenticate_user!
  layout 'cabinet'
end
