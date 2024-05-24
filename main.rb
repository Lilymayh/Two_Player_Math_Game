require_relative 'score.rb'
require_relative 'player.rb'
require_relative 'question.rb'

#Generate new instances for game_play to interacte with the user
player1 = Player.new("Player 1", 3)
player2 = Player.new("Player 2", 3)


def game_play(player1, player2)
  current_player = player1

	loop do
    question = Question.new
    puts "#{current_player.name}: #{question.generate_question}"
    print "> "
    STDOUT.flush # Flushes the standard output buffer
    answer = gets.chomp.to_i

    if question.verify_answer(answer)
      puts "THAT'S CORRECT! GOOD JOB!"
    else
      puts "What?! NO"
      current_player.decrement_life
    end

    current_player.lives_remaining(player1, player2)

    if current_player.game_over?
      winner = current_player == player1 ? player2 : player1
      puts "----- GAME OVER -----"
      puts "#{winner.name} wins with a score of #{winner.lives}/3"
      break
    else
      puts "----- NEW TURN -----"
    end

    current_player = current_player == player1 ? player2 : player1
  end
end
	#verify_answer
	#puts answer
	#puts score
	#--- NEW TURN ---
	#RERUN UNTIL GAME_OVER