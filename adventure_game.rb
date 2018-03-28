#Text-based adventure game
count = 0

while count < 2
  puts "Which direction would you like to go? Forward, right, or left?"
  direction = gets.chomp.capitalize

  if direction == 'Left'
    puts "You come face to face with a Werewolf, you die."
    count = 0
  elsif direction == 'Right'
    puts "You come face to face with a Goblin, you die."
    count = 0
  elsif direction == 'Forward'
    puts 'The way is clear'
    count += 1
  else
    puts 'That is not a valid direction'
  end
end

if count == 2
  puts 'You win'
end
