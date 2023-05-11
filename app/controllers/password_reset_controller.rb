class PasswordResetController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email:parmas[:email])
    if(user.present?)
        PasswordMailer.with(user:@user).reset.deliver_now
    end
    redirect_to root_path ,notice:"If an account with email found link will be sent "
  end
end
