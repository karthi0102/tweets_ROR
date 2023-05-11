class PasswordController < ApplicationController
  before_action:require_user_logged_in?
  def edit

  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path,alert:"Password Updated"
    else
      flash[:alert]="Something went wrong"
      render:edit,status: :unprocessable_entity
    end
  end

  private
  def password_params
    params[:user].permit(:password,:password_confirmation)
  end

end
