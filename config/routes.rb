Rails.application.routes.draw do

  resources :outfits
  resources :occasions

  get '/api/outfits' => 'api/outfits#index'
  get 'api/outfit/:id' => 'api/outfit#show'

end
