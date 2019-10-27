Rails.application.routes.draw do
  devise_for :users
	get '/contact', to:'contact#index'
	root "pages#index"
	resources :posts do
		resources :comments
		end

	get '/about', to: 'pages#about'
  

 
end
