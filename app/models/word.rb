class Word < ActiveRecord::Base
  attr_accessible :spelling
  
  def random_word
    sample[:spelling]
  end
  
  
end
