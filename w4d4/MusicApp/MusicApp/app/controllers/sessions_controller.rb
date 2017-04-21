class SessionsController < ApplicationController

  before_action :signed_in?, only: [:new]

  def new
    render :new
  end

  def create
    @user = login
    if @user
      redirect_to user_url(@user)
    else
      flash[:errors] = "Incorrect credentials"
      redirect_to new_sessions_url
    end
  end

  def destroy
    current_user.reset_session_token!
    session[:session_token] = nil
    redirect_to new_sessions_url
  end
end
