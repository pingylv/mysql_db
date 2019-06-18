Rails.application.routes.draw do
  get '/' => 'users#new'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'badname#index'
  get '/users' => 'users#index'

  resources :articles do
  		resources :comments
	end

  resources :sudzibas do
      resources :komentarss
  end

	resources :clients

	 root 'welcome#index'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
