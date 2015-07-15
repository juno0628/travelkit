class TravelPlansController < ApplicationController

	def current_user 
		@user = User.find(session[:user_id])
	end

	def index
		@user = User.find(current_user.id)
		@travelplans = Travel_plan.where(user_id: @user.id)
		binding.pry
	end

	def show
		@user = User.find(current_user)
		@travelplan = Travel_plan.find(params[:id])
	end

	def new 
		@travelplan = Travel_plan.new
	end

	def create
		@travelplan = Travel_plan.create(travel_plan_params)
	end

	def edit 
	end

	def update
	end

	def destroy
	end

	private

	def travel_plan_params
		params.permit()
	end

end
