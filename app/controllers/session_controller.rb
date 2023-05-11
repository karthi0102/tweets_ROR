class SessionController < ApplicationController
  def new

  end
  def create
    @user = User.find_by(email:params[:email])
    if @user.present? && @user.authenticate(params[:password])
        session[:user_id]=@user.id
        flash[:notice]="Login In successfull"
        redirect_to root_path
    else
      flash[:alert]="Invalid Parameteres"
      render :new,status: :unprocessable_entity
    end
  end
  def destroy
    puts "hello"
    session[:user_id]=nil
    flash[:notice]="Logged Out successfully"
    redirect_to root_path
  end
  private
  def user_params

  end
end
