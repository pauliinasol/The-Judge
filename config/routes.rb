Rails.application.routes.draw do

  get '/api/users' => 'api/users#index'
  get 'api/users/:id' => 'api/user#show'
  post '/api/users' => 'api/users#create'

  get '/api/outfits' => 'api/outfits#index'
  get 'api/outfits/:id' => 'api/outfits#show'
  post '/api/outfits' => 'api/outfits#create'

end
