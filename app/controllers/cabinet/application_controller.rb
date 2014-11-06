class Cabinet::ApplicationController <  ApplicationController
  before_action :authenticate_user!
  before_action do
    raise CanCan::AccessDenied unless current_user.manager?
  end

  layout 'cabinet'
end
