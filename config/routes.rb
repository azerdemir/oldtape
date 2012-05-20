Oldtape::Application.routes.draw do
	# Automatic routes generated by Devise
  devise_for :users

  # Default route
  root :to => 'artists#index'

  # Resourceful Routes
  resources :artists do
	  resources :albums
  end

	# We can define additional routes except nested resources above like this.
	#resources :albums
  #get '/albums/:id' => 'albums#show'
end
