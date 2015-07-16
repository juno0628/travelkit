Rails.application.routes.draw do
	
	get '/login', to: 'sessions#new'
	
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/', to: 'sessions#new'

  get '/expense_index', to: 'travel_plans#expense_index'

  get '/index', to: 'users#index'
  resources :travel_plan_entries, :travel_plans, :users

  resources :travel_plans do 
  	resources :categories 
  end

end
