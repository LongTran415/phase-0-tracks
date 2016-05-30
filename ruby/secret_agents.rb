# 1) Inputs a string
# 2) Loop through the string
# 3) Stop at each individual letter
# 4) Call a .next method on each letter
# 5) Reset that individual letter to the changed
# 6) Iterate to the length of the string
# 7) Output of the method is a string word encrypted


def encrypt(password_name)

 index = 0
 while index < password_name.length

  if password_name[index] == "z"
    password_name[index] = "a"
  elsif password_name[index] != " "
    password_name[index] = password_name[index].next
  end

  index += 1
 end

 password_name

end


def decrypt(password_name)
alpha = "abcdefghijklmnopqrstuvwxyz"
letter = 0

while letter < password_name.length
  if password_name[letter] != " "
    password_name[letter] = alpha[alpha.index(password_name[letter]) - 1]
    
  end

letter += 1
end

password_name
end


# # Tests
# p encrypt("abc") # => "bcd"
# p encrypt("zed") # => "afe"
# p decrypt("bcd") # => "abc"
# p decrypt("afe") # => "zed"

#puts decrypt(encrypt("swordfish"))


# pseudocoding program cryptography 
# It works because it follows evaluation order rules, meaning it executes the encrypt method first, which is in the parenthesis.


# 1. Request input from user, input that we are requesting is whether the use would like to encrypt or decrypt a password

# 2. Request input from user, input that we are requesting is a password 

# 3. The program will run and the output will be the result printed to the screen.
# 4. Exit

puts "Would you like to encrypt or decrypt a password?"

answer = gets.chomp

puts "What is the password?"

user_password = gets.chomp

if answer == "encrypt"
  encrypt(user_password)
else
  decrypt(user_password)
end 


