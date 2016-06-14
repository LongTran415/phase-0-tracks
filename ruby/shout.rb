#Example code

# module Shout
#
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     puts words + "!!!" + " B)"
#   end
#
# end
#
# #driver code
#
# Shout.yell_happily("Ruby you tricked me")
# Shout.yell_angrily("Ruby you tricked me")


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# mixin version

module Shout

  def yell_loudly(words)
    puts "#{words}!!!!!! I hate my life!!"
  end

end

class Taxi_cab
 include Shout
end

class Angry_Drunk
  include Shout
end

cabbie = Taxi_cab.new
cabbie.yell_loudly("Oh comon its a f%*$ing green light!!")

drunkie = Angry_Drunk.new
drunkie.yell_loudly("Of courrrrse I'll have anotheerr..im not evens strunk!!")
