require "active_support/inflector"

def encrypt(message)
	shift_text(message, 5)
end

def decrypt(message)
	shift_text(message, -5)
end

def shift_text(message, shift_number)
	decrypted_message = ""
	message.each_byte do |byte|
		shifted_byte = byte + shift_number
		decrypted_message << (shifted_byte).chr
	end
	decrypted_message
end

puts "messages".pluralize
m = encrypt("This is a message")
puts m
puts decrypt(m)

