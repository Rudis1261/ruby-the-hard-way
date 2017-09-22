name = 'Rudi Strydom'
age = 32
pound = 2.2
inches = 2.5
height = (74 * inches).ceil
weight = (256 / pound).ceil
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about #{name}."
puts "He's #{height}cm tall."
puts "He's #{weight}kg heavy."
puts "Actually that's not too heave."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending  on the coffee."

puts "It I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"
