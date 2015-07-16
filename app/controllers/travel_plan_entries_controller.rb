class TravelPlanEntriesController < ApplicationController
	def update
		@entry = TravelPlanEntry.find(params[:id])
		@entry.update(travel_plan_entry_params)
		binding.pry
		render json: @entry
	end

	private

	def travel_plan_entry_params
		params.require(:travel_plan_entry).permit(
			:travel_plan_id,
			:notes,
			:expense_file,
			:actual_expense,
			:estimated_amount)
	end
end
