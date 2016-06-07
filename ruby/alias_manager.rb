# Get users full name
# #check to see if full name has vowels
# #check to see if full name has consonants
#return user new name encrypted



def alias(string)

  new_alias = []

  string.each_char do |i|
    if i == "z"
      new_alias.push  "a"
    elsif i == 'a'|| i =='e'||i == 'i'|| i == 'o'|| i == 'u'|| i == " "
      new_alias.push i.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
    else
      new_alias.push i.next
    end
  end

  new_alias.join("")

end


# Get users full name
puts "Spy name please:"

user_name = gets.chomp

alias(user_name)


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
