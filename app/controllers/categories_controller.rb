class CategoriesController < ApplicationController
	def total_report
		@plan = TravelPlan.find(params[:id])
		@entries = @plan.travel_plan_entry 
		 @amount = @entries.group('category_id').sum('estimated_amount')
		 @expense = @entries.group('category_id').sum('actual_expense')
		 @total_estimated = @plan.travel_plan_entry.sum('estimated_amount')
		@total_expense = @plan.travel_plan_entry.sum('actual_expense')
		 @categories = Category.all 
			render partial: 'total_category'
	end

	def show
		@category = Category.find(params[:id])
		plan_id = params[:travel_plan_id]
		@plan = TravelPlan.find(plan_id)
		@total_estimated = @plan.travel_plan_entry.sum('estimated_amount')
		@total_expense = @plan.travel_plan_entry.sum('actual_expense')
		@entries = []
		@category.subcategory.each do |sub|
			entry = TravelPlanEntry.where(travel_plan_id: plan_id, subcategory_id: sub.id)
			if (entry != [])&&(entry != nil)
				@entries.push(entry)
			end
		end
		
		render partial: 'show_category'
	end
end