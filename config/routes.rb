Rails.application.routes.draw do
  get '/', to: 'users#index'
  resources :travel_plan_entries, :travel_plans, :users
end
