#LOOPS

def compliment(person)
  messages = [", you're a good person",", you are cool", "bye"]
 num = rand(5)
 puts person + messages[num]
end
def greet(name)
  puts "Hello" + name
end
students = ["Tony","Bob","Jim","Tim"]

4.times do |x|
 name = students[x]
compliment(name)
end
#####