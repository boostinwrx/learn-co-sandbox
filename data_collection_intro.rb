car_make_by_country = {
  :japan => [
    {
      :make => "Subaru",
      :model => ["Impreza","WRX","STI","Outback"]
    },
    {
      :make => "Nissan",
      :model => ["R32 GTR","R34 GTR","R33 GTR"]
    },
  ]
}
puts "I drive a #{car_make_by_country[:japan][0][:make]} #{car_make_by_country[:japan][0][:model][0]} #{car_make_by_country[:japan][0] [:model][1]}, with a #{car_make_by_country[:japan][0][:model][2]} short block swap."

gets.chomp

puts "I had an #{car_make_by_country[:japan][1] [:model][1]}, but I blew the welds on the intake..."
gets.chomp 


x  = 1000
while true do
  puts "The boost was over #{x}\n" 
  x += 1
  break if  x > 9000 ;
end
5.times {puts "THE BOOST WAS OVER 9000!!!!\n\n"}
 3.times {puts "I almost had you, TORETTO!!\n\n"}
