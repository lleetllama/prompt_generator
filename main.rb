@gender = File.read('./lists/gender.txt').split("\n")
@race = File.read('./lists/race.txt').split("\n")
@clothing = File.read('./lists/clothing.txt').split("\n")
@setup = File.read('./lists/setup.txt').split("\n")

def generate_prompt
  gender = @gender.sample
  race = @race.sample
  clothing = @clothing.sample
  setup = @setup.sample
  "#{gender} #{race}, wearing #{clothing}, #{setup}"
end

puts generate_prompt
