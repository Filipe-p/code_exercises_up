#Hey! if you are still trying to solve this excercise don't read on!!


"The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number XXXXXXXX?"

## work in progress 

#Re-fractoring to decrease time to compute
#Re-fractoring / Re-code to start finding the LARGEST prime of a number first, and not finding ALL the primes in ascending order.

#Pseudo Code
	# half_large = large_n / 2
	# largest_prime_factor = 0
	
	#while true
	# find 1 prime number starting from the half_large..0
		# Test to see if it is a factor of large_n
		# if it is a factor: exit all loops and return that prime
			# assign to largest_prime_factor
	# break if largest_prime_factor != 0

	# return largest_prime_factor

	# end

def largest_prime_factor(number)
	puts "starting ..."
	number_half = number / 2
	largest_prime_factor = 0

	puts 'testing prime numbers from largest ...'	
	while largest_prime_factor == 0
		b = (number_half..0).first
		puts b

		(1..number_half).reverse_each do |num|

			dividable_by = []
			# check if prime.
				# Prime number only devisable by 1 and itself
			(1..num).each do |div_n|
				if num % div_n == 0
					dividable_by << div_n
				end
				break if dividable_by.length > 3
			end
			# build array with primes
			if dividable_by.length == 2
				puts "prime number: #{num} tested as highest factor"
				if number % num == 0
					puts "Success! The highest prime factor is: #{num}"
					largest_prime_factor = num
				end
			end
			break if largest_prime_factor != 0
		end
	end
end

largest_prime_factor(10000000)

600851475143

### Old code that took too long to find the highest prime factor (for large number)


# def prime_numbers (number)
# 	primes = []
# 	(0..number).each do |num|

# 		dividable_by = []
# 		# check if prime.
# 			# Prime number only devisable by 1 and itself
# 		(1..num).each do |div_n|
# 			if num % div_n == 0
# 				dividable_by << div_n
# 			end		
# 		end

# 		# build array wity primes
# 		if dividable_by.length == 2
# 			primes << num
# 			puts "prime numbers found: #{primes.length}"
# 		end


# 	end
# 	primes
# end



# def largest_prime_factor(number)
# 	puts "starting ..."
# 	number_half = number / 2
# 	puts 'loading prime numbers ...'
# 	prime_n = prime_numbers(number_half)
# 	puts '----loaded prime numbers---'
# 	prime_factor_array = []

# 	counter = 0 
# 	prime_n.each do |pn|
# 		puts "#{counter} - prime: #{pn}"
# 		if number % pn == 0
# 			prime_factor_array << pn
# 			puts "True - #{pn}"
# 		# 	prime_factors << pn
# 		 end
# 	end
# 	p prime_factor_array.last
# end

# largest_prime_factor(600851475143)