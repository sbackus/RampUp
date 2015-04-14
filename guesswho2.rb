class Person

	attr_reader :name, :gender, :skin, :hair, :eyes

	def initialize name, gender, skin, hair, eyes
		@name = name
		@gender = gender
		@skin = skin
		@hair = hair
		@eyes = eyes
	end

	def to_s
		"#{@name} is a #{@skin} skinned, #{@eyes} eyed, #{@hair} haired #{@gender}"
	end
end 

class SuspectList

	def initialize file_name
		@people = []
		f = File.open(file_name, "r")
		f.each_line do |line|
			data = line.split(" ")
			name = data[0]
			gender = data[1]
			skin = data[2]
			hair = data[3]
			eyes = data[4]
		    @people << Person.new(name, gender, skin, hair, eyes)
		end
		f.close
	end

	def show
		@people.each do |person|
			puts person.to_s
		end
	end

	def delete_suspects(attribute, type, guilty_suspect)
		if guilty_suspect.send(attribute) == type
			@people.delete_if { |person| person.send(attribute) != type }
		else
			@people.delete_if { |person| person.send(attribute) == type }
		end
	end

	def random_person
		@people[rand(0...@people.size)]
	end
end

guesses = 0
suspectList = SuspectList.new("guess_who_data.txt")

guilty_suspect = suspectList.random_person
puts guilty_suspect.name

while guesses < 3
	suspectList.show
	puts "enter a attribute:"
	puts "gender, skin, hair, eyes"
	attribute = gets.chomp
	puts "what kind of #{attribute} do you think the suspect has?"
	type = gets.chomp
	suspectList.delete_suspects(attribute, type, guilty_suspect)
	guesses += 1
end

