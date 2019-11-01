Rails.application.routes.draw do
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
  devise_for :users
	root "pages#index"
	resources :posts do
		resources :comments
		end

	get '/about', to: 'pages#about'
  	resources :contact, only: [:index, :new, :create]
	resources :resumes, only: [:index, :new, :create, :destroy]

 
end
