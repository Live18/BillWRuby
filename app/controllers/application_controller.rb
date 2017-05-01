class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to main_app.root_url, :alert => exception.message
  end

  def is_admin?
  	unless user_signed_in? && current_user.admin?
  		redirect_to root_url, notice: 'Sorry, you do not have permission to do that.'
  	end
  end
end
