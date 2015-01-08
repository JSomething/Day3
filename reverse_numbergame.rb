puts "Think of a number between 1-100. I can't tell you why but it's important."
tries = 0
lowguess = 1
highguess = 100

def compguess lowguess, highguess
	return rand(lowguess..highguess)
end

until tries >= 5
guess = compguess lowguess, highguess
puts guess
puts "press H if I'm too high, L if I'm too low, C if I'm right on the money."
response = gets.chomp.downcase
	if response == "h"
		highguess = guess.pred
		tries += 1
	elsif response == "l"
		lowguess = guess.next
		tries += 1
	elsif response == "c"
		puts "Good job, took #{tries} attempts until success."
		tries += 10
	end
end

