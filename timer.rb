puts "Time's up!"
puts "===================="
puts "     Ruby Timer     "
puts "===================="
template_mini_database = {
  0 => "[░░░░░░░░░░]",
  10 => "[█░░░░░░░░░]",
  20 => "[██░░░░░░░░]",
  30 => "[███░░░░░░░]",
  40 => "[████░░░░░░]",
  50 => "[█████░░░░░]",
  60 => "[██████░░░░]",
  70 => "[███████░░░]",
  80 => "[████████░░]",
  90 => "[█████████░]",
  100 => "[██████████]"
}
puts "How many seconds would you like to set the timer for?"
seconds = gets.chomp.to_i
countdown = seconds.downto(1)
countdown.each do |number|
  time_left = number
  time_done = seconds - time_left
  percentage_time_left = ((time_left.to_f/seconds.to_f) * 100).round(2)
  percentage_time_done = ((time_done.to_f/seconds.to_f) * 100).round(2)
  visual_time = percentage_time_left.round(-1)
  print "\r Timer: #{template_mini_database[visual_time]} #{percentage_time_left} % | #{number} s"
  sleep(1) 
end
sleep(1)
print "\rTime's up!"