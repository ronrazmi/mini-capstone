Rails.application.routes.draw do
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#udpate'
  delete '/products/:id' => 'products#destroy'
  get '/products/sort' => 'products#sort'
end
