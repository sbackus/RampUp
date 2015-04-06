



def encrypt(message)
	character_hash = {"a" => "b", "b"=>"c", "c"=>"d"}
	shift_letters(message, character_hash)
end

def decrypt(message)
	character_hash = {"a" => "b", "b"=>"c", "c"=>"d"}
	reverse_character_hash = character_hash.invert
	shift_letters(message, reverse_character_hash)
end

def shift_letters(message,hash)
	answer = ""
	message.each_char do |char|
		answer << hash[char]
	end
	return answer
end

secret_message = encrypt ("cabbaa")
puts secret_message
puts decrypt(secret_message)
