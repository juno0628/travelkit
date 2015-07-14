Rails.application.routes.draw do
	get '/login', to: 'sessions#new'
	
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/', to: 'sessions#new'
  resources :travel_plan_entries, :travel_plans, :users
end
