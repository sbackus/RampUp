# (1..100).each do |number|
# 	if number%3 == 0 && number%5 ==0
# 		puts "fizzbuzz"
# 	elsif number%3 == 0
# 		puts "fizz"
# 	elsif number%5 == 0
# 		puts "buzz"
# 	else
# 		puts number
# 	end
# end



def fizzbuzz(number)
	if number%3 == 0 && number%5 ==0
		return "fizzbuzz"
	elsif number%3 == 0
		return "fizz"
	elsif number%5 == 0
		return "buzz"
	else
		return number
	end
end


(1..100).each do |number|
	puts fizzbuzz(number)
end

