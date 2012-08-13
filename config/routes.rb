Notword::Application.routes.draw do

  root :to => 'Words#home'
  
  get "/home" => 'Words#home'
  
  get '/random' => "Words#random"
  
end
