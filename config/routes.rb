Notword::Application.routes.draw do

  resources :users
  
  get '/sessions/new' => 'Sessions#new', :as => :login
  post '/sessions/create' => 'Sessions#create'
  get '/sessions/destroy' => 'Sessions#destroy', :as => :logout

  root :to => 'Words#home'
  
  get "/home" => 'Words#home'
  
  get '/random' => "Words#random"
  
  get 'favorites/new' => "Favorites#new", :as => :new_fav
  
  get 'favorites/new_rando' => "Favorites#new_rando", :as => :new_rando
  
  get "words/show/:id" => "Words#show", :as => :show_word
  
end
