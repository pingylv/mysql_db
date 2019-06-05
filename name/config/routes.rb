Rails.application.routes.draw do
  get '/' => 'users#index'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'badname#index'

  	resources :articles do
  		resources :comments
	end

	resources :clients

	 root 'welcome#index'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
