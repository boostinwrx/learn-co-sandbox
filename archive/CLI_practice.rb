#CLI practice

def compliment(person)
  messages = [", you're a good person",", you are cool", "bye"]
 num = rand(5)
 puts person + messages[num]
end

puts "Welcome to the positivity generator"
puts "What is your name"
name = gets.chomp
  if(name == "Grinch")
    puts "He's the Grinch"
  else compliment(name)
  end
###Note: Name does NOT have to equal person, talks about same user input
              
