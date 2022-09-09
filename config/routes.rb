Rails.application.routes.draw do
  devise_scope :admin do
    # Redirests signing out users back to sign-in
    get "admins", to: "devise/sessions#new"
  end
  
  devise_for :admins
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'services', to: 'pages#services'
  get 'about', to: 'pages#about'
  get 'gallery', to: 'pages#gallery'
  get 'contact', to: 'messages#new'
  get '/contact/confirmation', to: 'messages#confirmation'

  root "pages#home"
end
