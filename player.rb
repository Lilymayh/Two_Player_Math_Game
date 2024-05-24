class Player
	attr_reader :name, :lives

	def initialize(name, lives)
		@name = name
		@lives = lives
	end

	def lives_remaining(player1, player2)
    if @lives >= 1
      puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"
      @lives -= 1
		end
	end

	def game_over
		if @lives <= 0
			puts '----- GAME OVER -----'
end
end
end