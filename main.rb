require "./players"
require "./questions"

class Game
  def initialize
    @player_1 = Players.new("Player 1")
    @player_2 = Players.new("Player 2")
    @players = [@player_1, @player_2]
  end

  def display_turn_status
    puts "P1: #{@player_1.highest_life}/3 vs P2: #{@player_2.highest_life}/3"
    puts "----- NEW TURN -----"
    puts
  end

  def alive_players
    @players.select { |player| !player.dead? }
  end

  def current_player
    alive_players.first 
  end

 def turns
  @players.rotate!
  end 

def game_over?
  alive_players.count == 1
end

def display_winner
  puts "#{alive_players.first.name} wins! With a score of #{alive_players.first.highest_life}/3" 
  puts "----- GAME OVER -----"
  puts "Good bye!"
end


def play

  until(game_over?) do
    #Print current player
    puts "#{current_player.name}:"
    #Create a new question for current play
    game_question = Questions.new
    #Validate answer from current player
    if !game_question.question
      #Remove a life if answer is wrong
      current_player.looses_life
    end

    if game_over?
      display_winner
    else
    #Display status of the game
    display_turn_status
    #Go to next round and switch turns
    turns
    end
  end
end
end

test = Game.new

test.play
