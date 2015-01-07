answer = rand(1..100)
# answer = 50
tries = 0

puts "Guess the number, save the world."

user_answer = gets.chomp.to_i
tries += 1

until user_answer == answer || tries == 5 do
	if user_answer > answer
		puts "Try lower, loser."
	elsif user_answer < answer
		puts "Try higher, loser."
	end
	user_answer = gets.chomp.to_i
	tries += 1
end

if user_answer == answer
	puts "Congrats, took you #{tries} tries, though."
else
	puts "Better luck next time."
end