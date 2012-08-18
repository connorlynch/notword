class Word < ActiveRecord::Base
  attr_accessible :spelling
  
  has_many :favorites
  has_many :users, :through => :favorites
  
  def random_word
    sample[:spelling]
  end
  
  
end
