Rails.application.routes.draw do

  get '/api/users' => 'api/users#index'
  get '/api/users/:id' => 'api/users#show'
  post '/api/users' => 'api/users#create'
  post '/api/users/login' => 'api/users#login'

  get '/api/outfits' => 'api/outfits#index'
  get '/api/outfits/:id' => 'api/outfits#show'
  post '/api/outfits' => 'api/outfits#create'
  post '/api/outfits/photo' => 'api/outfits#upload'

  get '/api/ratings' => 'api/ratings#index'
  get '/api/ratings/:id' => 'api/ratings#show'
  post '/api/ratings' => 'api/ratings#create'

  get '/api/occasions' => 'api/occasions#index'
  get '/api/occasions/:id' => 'api/occasions#show'
  post '/api/occasions' => 'api/occasions#create'

  resource :outfits

end
