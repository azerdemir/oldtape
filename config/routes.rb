Oldtape::Application.routes.draw do
  # Default route
  root :to => 'artists#index'

  resources :artists
end
