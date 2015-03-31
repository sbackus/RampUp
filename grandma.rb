class Grandma
	def initialize
		@byes = 0
	end

	def say_hi
		words = gets.chomp
		if words == "BYE"
			@byes += 1
		else
			@byes = 0
		end

		if words == words.upcase
			puts "NO, NOT SINCE " + rand(1920..1946).to_s
		else
			puts "HUH? SPEAK UP SONNY!"
		end
	end

	def ready_to_say_bye?
		@byes >= 3
	end
end



grandma = Grandma.new

until grandma.ready_to_say_bye?
	grandma.say_hi
end



