Rails.application.routes.draw do
  devise_for :users
	root "pages#index"
	resources :posts do
		resources :comments
		end

	get '/about', to: 'pages#about'
  	resources :contact, only: [:index, :new, :create]

 
end
