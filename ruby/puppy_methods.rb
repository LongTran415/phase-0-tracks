

class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times {puts "woof"}
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years(human_years)
    if human_years < 3
      p human_years * 5
     else
      p ((human_years - 2)*4) + 10
    end
  end

  def play_dead
    puts "*feigns death*"
  end

end

#driver code
bud = Puppy.new
bud.fetch("ball")
bud.speak(5)
bud.roll_over
bud.dog_years(10)
bud.play_dead


#kitten class methods
class Kitten

  def initialize
    puts "Initializing new kitten instance ..."
  end

  def nap_time
    puts "zzzzZZZzzzz"
  end

  def jump_on_laptop
    puts "*click* *clack*"
  end

end

#kitten driver code and initialization loop
i = 0

kitten_arry = []

while i < 50
  kitten_arry << Kitten.new
  i += 1
end

kitten_arry.each do |kitten|
  kitten.nap_time
  kitten.jump_on_laptop
end
