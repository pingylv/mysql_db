Rails.application.routes.draw do
  get '/' => 'users#new'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'badname#index'
  get '/users' => 'users#index'

  resources :sudzibas do
      resources :piezimes
  end

	resources :clients

	 root 'welcome#index'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
