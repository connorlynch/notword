# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

words_to_avoid = ['awesome', 'random', 'literally', 'ridiculous', 'hate', 'love']

words_to_avoid.each do |w|
  word = Word.new
  word.spelling = w
  word.curated = true
  word.save
end
