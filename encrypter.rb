def encrypt(message)
	encrypted_message = []
	message.each_byte do |byte|
		encrypted_message << (byte + 5)
	end
	encrypted_message.pack('c*')
end

def decrypt(message)
	decrypted_message = []
	message.each_byte do |byte|
		decrypted_message << (byte - 5)
	end
	decrypted_message.pack('c*')
end

m = encrypt("This is a message")
puts m
puts decrypt(m)

