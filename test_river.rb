river = "--P--,--C--,CC-CC,CC-CC"

position = 0
position_r = 0
game = river.split(',')

for num in (0...game[position].length)
  if game[position][num] == 'P'
    position_r = num
  end
end

while position < 5
  if position == 4
    puts "You survived!"
    break
  end

  if game[position][position_r] == 'C'
    puts "You were eaten"
    break
  elsif position > 0
    game[position][position_r] = 'P'
  end

  game.each do |x|
    puts x
  end

  puts "Type left, right, or neither?"
  move = gets.chomp
  if move == 'right'
    position_r += 1
  elsif move == 'left'
    position_r -= 1
  end
  position += 1

  for num in (0...game.length)
    if game[position - 1][num] != 'C'
      game[position - 1][num] = '-'
    end
  end

end
