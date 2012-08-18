class Favorite < ActiveRecord::Base
  attr_accessible :user_id, :word_id
  
  belongs_to :word
  belongs_to :user
end
