Oldtape::Application.routes.draw do
  devise_for :users

  # Default route
  root :to => 'artists#index'

  # Resourceful Routes
  resources :artists
end
