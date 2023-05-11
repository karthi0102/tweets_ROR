class ApplicationController < ActionController::Base
  before_action:set_current_user
  def set_current_user
    if (session[:user_id]) then
      Current.user=User.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in?
    redirect_to login_path ,alert:"Login in to continue" if Current.user.nil?
  end
end
