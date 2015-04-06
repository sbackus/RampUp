def encrypt(message)
	shift_text(message, 5)
end

def decrypt(message)
	shift_text(message, -5)
end

def shift_text(message, shift_number)
	decrypted_message = []
	message.each_byte do |byte|
		decrypted_message << (byte + shift_number)
	end
	decrypted_message.pack('c*')
end

m = encrypt("This is a message")
puts m
puts decrypt(m)

