name="Tony"
puts name

def badge_maker(name)
  puts "Hello, my name is " + name + "."
end
 
def batch_badge_creator
speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
puts "Hello, my name is " + speakers[0] + "."
puts "Hello, my name is " + speakers[1] + "."
puts "Hello, my name is " + speakers[2] + "."
puts "Hello, my name is " + speakers[3] + "."
puts "Hello, my name is " + speakers[4] + "."
puts "Hello, my name is " + speakers[5] + "."
puts "Hello, my name is " + speakers[6] + "."
end

def assign_rooms
 speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
 counter = 0
 speakers.each do |room|
  counter == room 
  puts  "Hello, speaker! You'll be assigned to room" + room +=1 + "!"
end
end

def printer
  print badge_maker(name)
  print batch_badge_creator
end
   