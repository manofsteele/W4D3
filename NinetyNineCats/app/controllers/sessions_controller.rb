class SessionsController < ApplicationController
  helper_method :current_user
  
  def new
    @user = User.new
    render :new
  end
  
  def create
    @user = User.find_by_credentials(params[:user][:username],params[:user][:password])
    
    if @user
      @user.reset_session_token!
      session[:session_token] = @user.session_token
      redirect_to cats_url
    else
      flash[:errors] = ["Could not find username and password"]
      redirect_to new_session_url
    end
  end
  
  def destroy
    user = current_user
    if user 
      user.reset_session_token!
      session[:session_token] = nil
      redirect_to new_session_url
    end
  end
end