class TravelPlanEntriesController < ApplicationController
	def update
		binding.pry
		@entry = TravelPlanEntry.find(params[:id])
		@entry.update(travel_plan_entry_params)
		binding.pry
		plan_id = @entry.travel_plan_id
		redirect_to "/travel_plans/#{plan_id}/edit"
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
