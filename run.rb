require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

lpz = Zoo.new("Chicago", "Lincoln Park Zoo")
brookfield = Zoo.new("Chicago", "Brookfield Zoo")
como = Zoo.new("Minnesota", "Como Zoo")
vicki = Animal.new("Vicki", 100, "Monkey", brookfield)
pb = Animal.new("Mr. Peanutbutter", 150, "Dog", lpz)
bj = Animal.new("Bojack Horseman", 1200, "Horse", lpz)
rafiki = Animal.new("Rafiki", 200, "Monkey", brookfield)

p lpz.animals
p brookfield.animals
p brookfield.find_by_species("Monkey")
p Zoo.find_by_location("Chicago")

vicki.weight += 10
p vicki
bj.weight -= 50
p bj
rafiki.nickname = "Poopface"

binding.pry
puts "done"
