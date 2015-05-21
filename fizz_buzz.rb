iterator = 0

while (iterator < 101)

	if iterator%3 == 0
	puts "Fizz"
	
	elsif iterator%5 == 0
	puts "Buzz"
	
	elsif iterator%3 == 0 && iterator%5 == 0
	puts "FizzBuzz"
	
	else
	puts iterator
	
	end
	iterator += 1

end