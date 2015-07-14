class SessionsController < ApplicationController

	#renders the login form
  def new 
  end

  #creates a session
  def create
    binding.pry
    user = User.find_by({user_name: params[:user_name]})
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.user_name
      session[:user_fullname] = "#{user.f_name} #{user.l_name}"
      redirect_to "/" #user index page
    else
      # rerender the form
      redirect_to '/login'
    end
  end

  #nulls user session (logout)
  def destroy
  	session[:user_id] = nil
    session[:user_name] = nil
    session[:is_instructor] = nil
  	redirect_to '/login'
  end

end