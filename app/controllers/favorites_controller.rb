class FavoritesController < ApplicationController
  
  def new
    f = Favorite.new
    f.user_id = session[:user_id]
    f.word_id 
  end
  
end
