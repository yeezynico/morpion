require 'bundler'
Bundler.require

require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/game'
require_relative 'lib/player'

game = Game.new

game.turn


