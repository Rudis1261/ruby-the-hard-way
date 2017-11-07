require './lib/scene.rb'
require './scenes/intro.rb'
require './scenes/tavern.rb'
require './scenes/ship_wreck.rb'
require './scenes/pirate_ship'
require './scenes/gold_mine.rb'
require './scenes/death.rb'
require './scenes/finish.rb'

require './lib/engine.rb'
require './lib/map.rb'

game = Engine.new(Map.new('intro'))
game.play()