
class Question 
	def initialize
		@num1 = rand(1..20)
		@num2 = rand(1..20)
	end

		def generate_question
			"What does #{@num1} + #{@num2} equal?"
		end

		def verify_answer(answer)
			@num1 + @num2 == answer.to_i
		end
end