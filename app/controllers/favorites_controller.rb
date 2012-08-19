class FavoritesController < ApplicationController
  
  def new
    if session[:user_id] && params[:word_id]
      f = Favorite.new
      f.user_id = session[:user_id]
      f.word_id = params[:word_id]
      f.save
      redirect_to user_url(session[:user_id])
    end
  end
  
end
