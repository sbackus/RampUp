puts "which way do you go?"
user_answers = gets.chomp

if user_answers == "Left"
  puts "you go left and see the opening of a cave."
elsif user_answers == "Right"
  puts "you go right and see a waterfall."
else
  puts "you stand and drool."
end
