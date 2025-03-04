# encrypt a secret and put encrypted password
password = "abc123" 
encrypted_password = BCrypt::Password.create(password)
puts encrypted_password

puts BCrypt::Password.new(encrypted_password) == password