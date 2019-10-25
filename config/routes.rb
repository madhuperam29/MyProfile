Rails.application.routes.draw do
  get '/contact', to:'contact#index'
  root "pages#index"
resources :posts
  get '/about', to: 'pages#about'
  

 
end
