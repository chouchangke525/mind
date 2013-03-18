class ApplicationController < ActionController::Base
  before_filter :authorize
  before_filter :authorize_admin
  
  protected 
  
  def authorize
    unless User.find_by_id(session[:user_id]) or Admin.find_by_id(session[:admin_id])
    redirect_to login_url, notice: "Please log in"
    end 
  end
  
  def authorize_admin
    unless Admin.find_by_id(session[:admin_id])
    redirect_to user_url(User.find(session[:user_id])), notice: "You are not an administrator."
    end 
  end
  
end
