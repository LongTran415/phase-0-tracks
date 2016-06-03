

# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".replace("InVeStIgAtIoN")
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
"zom".replace("zoom")
# => “zoom”

"enhance".center(18)
"enhance".replace("    enhance    ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".replace("STOP! YOU’RE UNDER ARREST!")
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9," suspects")
"the usual".concat(" suspects")
"the usual".replace("the usual suspects")
#=> "the usual suspects"

"suspects".insert(0,"the usual ")
"suspects".prepend("the usual ")
"suspects".replace("the usual suspects")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter".replace("The case of the disappearing last lette")
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
"The mystery of the missing first letter".delete "t".capitalize
"The mystery of the missing first letter".delete "t".upcase
"The mystery of the missing first letter".delete "The mystery of the missing first letter"[0]
"The mystery of the missing first letter".replace("he mystery of the missing first letter")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".scan(/[^\s]{2,}/).join(" ")
"Elementary,    my   dear        Watson!"[/([\S]+)[\s]+([\S]+)[\s]+([\S]+)[\s]+([\S]+)/]
p "#{$1} #{$2} #{$3} #{$4}"
"Elementary,    my   dear        Watson!".squeeze("  ")
"Elementary,    my   dear        Watson!".sub(/[\s]{2,}/, ' ')
# => "Elementary, my dear Watson!"

"z".replace("\172")
"z".ord
# => 122

# (What is the significance of the number 122 in relation to the character z?)
# answer: 122 is the Decimal value for z in an Ascii chart. Since computers can only understand numbers, an Ascii chart allows us to see bits values of letters and characters.

"How many times does the letter 'a' appear in this string?".scan(/(a)/).length
# => 4
