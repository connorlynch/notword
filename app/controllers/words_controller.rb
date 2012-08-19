require 'json'
require 'wordnik'

class WordsController < ApplicationController
  
  def home    
    %w(rubygems wordnik).each {|lib| require lib}

    Wordnik.configure do |config|
        config.api_key = 'aeacd7ec84670707e90090b08b70f65c9da2c4c4fe7808238'
    end
    
    @word = Word.all.sample
    
    syns = Wordnik.word.get_related("#{@word.spelling}", :type => 'synonym')
    @synonyms = syns[0]["words"].first(5)
    
  end
  
  def random
    %w(rubygems wordnik).each {|lib| require lib}

    Wordnik.configure do |config|
        config.api_key = 'aeacd7ec84670707e90090b08b70f65c9da2c4c4fe7808238'
    end
    
    w = Wordnik.words.get_random_word(:hasDictionaryDef => 'true', :includePartOfSpeech => 'noun')["word"] 
    until Wordnik.word.get_related("#{w}", :type => 'synonym').present?
      w = Wordnik.words.get_random_word(:hasDictionaryDef => 'true', :includePartOfSpeech => 'noun')["word"]
    end
    
    @word = w
    
    @synonyms = Wordnik.word.get_related("#{@word}", :type => 'synonym')[0]["words"].first(5)
    
    # while @synonyms == nil
    #       @word = Wordnik.words.get_random_word(:hasDictionaryDef => 'true', :includePartOfSpeech => 'noun')["word"]
    #     end
    #     
    #     @synonyms = Wordnik.word.get_related("#{@word}", :type => 'synonym')
    #     
  end
  
end
