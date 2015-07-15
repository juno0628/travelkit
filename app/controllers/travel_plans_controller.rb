class TravelPlansController < ApplicationController

	def current_user 
		@user = User.find(session[:user_id])
	end

	def index
		@user = User.find(current_user.id)
		@travelplans = TravelPlan.where(user_id: @user.id)
		binding.pry
	end

	def show
		@user = User.find(current_user)
		@travelplan = TravelPlan.find(params[:id])
		@categories = Category.all 
	end

	def new 
		@categories = Category.all
		@travelplan = TravelPlan.new
	end

	def create
		@categories = Category.all
		@travelplan = TravelPlan.new(travel_plan_params)
		@travelplan.user_id = current_user.id
		@travelplan.save
		# associate travelplaneentries with the subcategories
		params["subcategories"].each do |sub|
			TravelPlanEntry.create({
				travel_plan_id: @travelplan.id, subcategory_id: sub
			})	
		end
		redirect_to "/travel_plans/#{@travelplan.id}/edit"
	end

	def edit 
		@travelplan = TravelPlan.find(params[:id])
		binding.pry
		@entries = @travelplan.travel_plan_entry
	end

	def update
	end

	def destroy
	end

	private

	def travel_plan_params
		params.require(:travel_plan).permit(
			:is_international,
			:destination_city,
			:destination_country,
			:departure_city,
			:departure_country,
			:user_id,
			:start_date,
			:end_date)
	end

end
