class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?



  def login
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password] )
    session[:session_token] = @user.reset_session_token! if @user
    @user
  end

  def current_user
    @current_user||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    redirect_to new_sessions_url unless current_user
  end

  def signed_in?
    redirect_to bands_url if current_user
  end
end
