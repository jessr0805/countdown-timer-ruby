countdown = [5, 4, 3, 2, 1]
countdown.each do |number|
  puts number
  sleep(1)
end
puts "Time's up!"