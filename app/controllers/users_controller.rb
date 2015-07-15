class UsersController < ApplicationController
	def current_user 
		@user = User.find(session[:user_id])
	end

	# --- index is dashboard page. user needs log in to see the page --- 
	def index
		@user = current_user
	end

	# ---- this is route for profile page ---- #
	def show 
		@user = User.find(params[:id])
	end

	def new 
		@user = User.new
	end

	# ---- new user sign in page --- # 
	def create
		user = User.new
		@user = user.update(user_params)
		redirect_to '/login'
	end

	  private

  def user_params
    params.permit(:user_name, :user_email, :password, :password_confirmation, :f_name, :l_name, :user_profile_image)
  end

end
