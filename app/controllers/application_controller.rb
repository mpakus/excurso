class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def user_for_paper_trail
    user_signed_in? ? current_user.email : 'Anonym'
  end

end
