Rails.application.routes.draw do

	root 'spots#index'
	resources :spots
	get '/map', to: 'spots#map'

end
