class SessionsController < ApplicationController
  def create
    session[:password] = params[:password]
    flash[:notice] = 'Sucessfully logged in'
    redirect_to posts_url
  end
  
  def destroy
    reset_session
    flash[:notice] = 'Successfully logged out'
    redirect_to posts_url
  end
end