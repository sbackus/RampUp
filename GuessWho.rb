
class Person 

	attr_reader :name, :gender, :demeanor, :hair, :eyes
	attr_accessor :guilty

	def initialize(name, gender, demeanor, hair, eyes)
		@name = name.capitalize
		@gender = gender
		@demeanor = demeanor
		@hair = hair
		@eyes = eyes
	end

	def to_s
		"#{@name} is a #{@demeanor} #{@gender} with #{@hair} hair and #{@eyes} eyes."
	end	

end

def guess_suspect(people)
	puts "who do you think is guilty"
	guess = gets.chomp
	puts "guess is" +guess
	suspect = people.select{|person| person.name == guess}
	puts suspect
	if suspect.empty? 
		puts "That's not a valid guess.  Try again."
		return guess_suspect(people)
	else 
		return suspect.first
	end
end

def show_suspects(people)
	puts "here's the list of suspects:"
	people.each do |person|
		puts person 
	end
end

def eliminate_suspects(people, guilty_person)
	puts "pick an attribute:"
	puts "gender, demeanor, hair or eyes"
	attribute = gets.chomp
	puts "what is your guess for that attribute"
	guess = gets.chomp

	begin

		if guilty_person.send(attribute) == guess 
			puts "the suspect has #{guess} #{attribute}"
			people.delete_if { |person| person.send(attribute) != guess}
		else
			puts "the suspect does not have #{guess} #{attribute}"
			people.delete_if { |person| person.send(attribute) == guess}
		end
	rescue
		puts "#{attribute} is not a valid attribute"
		puts "try again"
		eliminate_suspects(people, guilty_person)
	end
end

people = [
Person.new("rachel", "girl", "happy", "auburn", "brown"),
Person.new("mac", "boy", "sad", "black", "brown"),
Person.new("nick", "boy", "sad", "brown", "blue"),
Person.new("angie", "girl", "sad", "auburn", "green"),
Person.new("theo", "boy", "sad", "blonde", "brown"),
Person.new("joshua", "boy", "sad", "black", "brown"),
Person.new("emily", "girl", "sad", "blonde", "blue"),
Person.new("jason", "boy", "sad", "blonde", "green"),
Person.new("john", "boy", "sad", "brown", "blue"),
Person.new("grace", "girl", "happy", "black", "brown"),
Person.new("jake", "boy", "sad", "brown", "brown"),
Person.new("megan", "girl", "sad", "blonde", "green"),
Person.new("ryan", "boy", "sad", "auburn", "brown"),
Person.new("brandon", "boy", "sad", "blonde", "brown"),
Person.new("beth", "girl", "sad", "blonde", "brown"),
Person.new("diane", "girl", "happy", "brown", "brown"),
Person.new("chris", "boy", "sad", "black", "green"),
Person.new("david", "boy", "happy", "black", "brown"),
Person.new("michelle", "girl", "happy", "brown", "brown"),
Person.new("tyson", "boy", "happy", "black", "brown"),
Person.new("ursula", "girl", "sad", "auburn", "green")]

guilty_person = people[rand(0...people.size)]
puts "the guilty person is #{guilty_person.name}"
guesses = 0
game_over = false

while !game_over do
	
	show_suspects(people)
	eliminate_suspects(people, guilty_person)
	
	show_suspects(people)
	guess = guess_suspect(people)
	guesses += 1
	
	if guess == guilty_person
		puts "you found the guilty person!"
		puts "you win!"
		game_over = true
	elsif guesses > 3 
		puts "the guilty person got away."
		puts "you loose!"
		game_over = true
	else
		puts "It's not #{guess.name}.  Keep trying."
	end


end


