class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show 
		@user = User.find(params[:id])
	end
	def new 
		@user = User.new
	end

	def create
		binding.pry
		user = User.new
		@user = user.update(user_params)
		redirect_to '/login'
	end

	  private

  def user_params
    params.permit(:user_name, :user_email, :password, :password_confirmation, :f_name, :l_name, :user_profile_image)
  end

end
