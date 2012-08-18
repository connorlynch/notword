Notword::Application.routes.draw do

  resources :users
  
  get '/sessions/new' => 'Sessions#new', :as => :login
  post '/sessions/create' => 'Sessions#create'
  get '/sessions/destroy' => 'Sessions#destroy', :as => :logout

  root :to => 'Words#home'
  
  get "/home" => 'Words#home'
  
  get '/random' => "Words#random"
  
  
end
