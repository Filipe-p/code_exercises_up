#Hey! if you are trying to solve this excercise don't read on!!


"Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms."

fib_limit = 4000000
fib_sequence = [1, 2]

fib_even_count = 0

while true #break if fib_n > fib_limit
	fib_l = fib_sequence.length
	fib_n = fib_sequence[fib_l - 1] + fib_sequence[fib_l - 2]
	puts fib_n
	break if fib_n > fib_limit
	fib_sequence << fib_n
end
p fib_sequence

fib_sequence.each do |n|
	if n % 2 == 0
		fib_even_count += n
	else
		puts "#{n} no devisable by 2"
	end
	p fib_even_count
end



