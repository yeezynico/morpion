require_relative 'game'
require_relative 'player'
require_relative 'boardcase'

class Grid
    attr_accessor :grid
    
    def initialize
        @grid = []

        9.times do |i|
            @grid << GridCase.new("case#{i+1}").symbol
        end
    end

    def play_turn(player)
        puts "Sur quelle case veux-tu aller #{player.name} ? "
        case_number = gets.chomp.to_i
        if @grid[(case_number-1)] == " "
         @grid[(case_number-1)] = player.symbol
        else
         puts "Pas dispo"
         play_turn(player)
        end
    end
    
    def display_board
        puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
        puts "-----------"
        puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
        puts "-----------"
        puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
    end
    
    def victory?
        if @grid[0] == @grid[1] && @grid[0] == @grid[2] && @grid[0] != " " ||  @grid[3] == @grid[4] && @grid[3] == @grid[5] && @grid[3] != " " || @grid[6] == @grid[7] && @grid[6] == @grid[8] && @grid[6] != " "  || @grid[0] == @grid[3] && @grid[0] == @grid[6] && @grid[0] != " " || @grid[1] == @grid[4] && @grid[1] == @grid[7] && @grid[1] != " "  || @grid[2] == @grid[5] && @grid[2] == @grid[8] && @grid[2] != " "  ||@grid[0] == @grid[4] && @grid[0] == @grid[8] && @grid[0] != " "  || @grid[2] == @grid[4] && @grid[2] == @grid[6] && @grid[2] != " " 
          return true
        else
          return false
        end
    end

end

