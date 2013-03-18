class SessionsController < ApplicationController

skip_before_filter :authorize
skip_before_filter :authorize_admin

  def new
  
  
  end

  def create
  
  user=User.find_by_name(params[:name])
  admin=Admin.find_by_name(params[:name])
  
     if admin and admin.authenticate(params[:password])
           session[:admin_id]=admin.id
           session[:user_id]=nil
           redirect_to admin, notice: "Logged in as an administrator"
      
     elsif user and user.authenticate(params[:password])
        session[:user_id]=user.id
        session[:admin_id]=nil
        redirect_to user, notice: "Logged in as an user"
     else
        redirect_to login_url, notice: "Invalid"
     end
     
  end

  def destroy
  
  session[:user_id]=nil
  session[:admin_id]=nil
     redirect_to login_url, notice: "Logged out"
     
     
  end
end
