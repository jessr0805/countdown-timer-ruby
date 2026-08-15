puts "===================="
puts "     Ruby Timer     "
puts "===================="
puts "How many seconds would you like to set the timer for?"
seconds = gets.chomp.to_i
sleep(1)
countdown = seconds.downto(1)
countdown.each do |number|
  puts number
  sleep(1)
end
puts "Time's up!"