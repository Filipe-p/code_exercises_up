#Hey! if you are trying to solve this excercise don't read on!!

"Find the sum of all the multiples of 3 or 5 below 1000"

multiples_3 = []
multiples_5 = []
multiples_addition = 0 

counter = 0

while counter < 1000
	multiple_5 = 5 * counter 
	if multiple_5 < 1000
		multiples_5 << multiple_5
	end

	multiple_3 = 3 * counter

	if multiple_3 < 1000
		if multiples_5.include?(multiple_3)
			puts "#{multiple_3} is included in multiples_5" 
		else
			multiples_3 << multiple_3
		end
	end

	counter += 1
end

multiples_3.each do |m|
	multiples_addition += m
end
p multiples_addition


multiples_5.each do |m|
	multiples_addition += m
end

p multiples_addition

