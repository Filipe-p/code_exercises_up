#Hey! if you are trying to solve this excercise don't read on!!


counter = 0
multiples = 0


while counter < 1000
	if counter % 3 == 0 || counter % 5 == 0
		multiples += counter
	end
	counter += 1
end

p multiples


