class Game
	COLORS = ["R", "G", "B", "Y", "O", "P"]

	def initialize  
		@comp = Computer.new
		@Player = Player.new
	end

	def play
		10.times do |i|
			puts "This is chance #{i+1} of 10"
			current_guess = @Player.guess_code
			standing = evaluate_guess(current_guess)

			if standing[:exact].length == 4
				puts "You won!"
				return
			else
				puts "#{standing[:exact].length} Exact Matches"
				puts "#{standing[:near].length} Near Matches"
			end
		end

		puts "You lost!"