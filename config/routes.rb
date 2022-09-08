Rails.application.routes.draw do
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'services', to: 'pages#services'
  get 'about', to: 'pages#about'
  get 'gallery', to: 'pages#gallery'

  root "pages#home"
end
