#Hey! if you are trying to solve this excercise don't read on!!


#Note: is still taking way too long...... 


"The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number XXXXXXXX?"

def prime_numbers (number)
	primes = []
	(0..number).each do |num|

		dividable_by = []
		# check if prime.
			# Prime number only devisable by 1 and itself
		(1..num).each do |div_n|
			if num % div_n == 0
				dividable_by << div_n
			end		
		end

		 dividable_by


		# build array wity primes
		if dividable_by.length == 2
			primes << num
			puts "prime numbers found: #{primes.length}"
		end


	end
	primes
end



def largest_prime_factor(number)
	puts "starting ..."
	number_half = number / 2
	puts 'loading prime numbers ...'
	prime_n = prime_numbers(number_half)
	puts '----loaded prime numbers---'
	prime_factor_array = []

	counter = 0 
	prime_n.each do |pn|
		puts "#{counter} - prime: #{pn}"
		if number % pn == 0
			prime_factor_array << pn
			puts "True - #{pn}"
		# 	prime_factors << pn
		 end
	end
	p prime_factor_array.last
end

largest_prime_factor(1000000000)