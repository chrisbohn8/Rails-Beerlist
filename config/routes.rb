Rails.application.routes.draw do
#	get 'beerlist/index'

	get 'beers/beerlist' => 'beers#beerlist'
	resources :beers
	root 'beers#index'
end
