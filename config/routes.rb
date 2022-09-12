Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  devise_scope :admin do
    # Redirests signing out users back to sign-in
    get "sign_in", to: "devise/sessions#new"
  end
  
  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
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
