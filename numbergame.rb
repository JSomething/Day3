# puts rand(1..100)
# answer = rand(1..100)
answer = 50
attempts = 0
# max_attempts = 5
@game_on = false
puts "Guess the number, save the cheerleader."
user_guess = gets.chomp.to_i

def guess user_guess, answer, attempts
	if user_guess == answer
		@game_on = true
		puts "Well played, it took you #{attempts} tries, though."
		abort
	elsif user_guess > answer
		puts "Try lower, loser."
	elsif user_guess < answer
		puts "Try higher, loser."
	end
end



while !@game_on && attempts < 5
	# puts "Guess away"
	guess(user_guess, answer, attempts)
	user_guess = gets.chomp.to_i
	attempts += 1
end




# until user_guess == answer || attempts == max_attempts do 
# 	if user_guess > answer
# 		puts "Try lower, loser."
# 	elsif user_guess < answer
# 		puts "Try higher, loser."
# 	end
# 	user_guess = gets.chomp.to_i
# 	attempts += 1
# end

# puts "Boom. Took you #{attempts} tries, though."

	