#Dice game

p1_rounds_won = 0
p2_rounds_won = 0

dice_score_1 = 0
dice_score_2 = 0

while p1_rounds_won < 2 && p2_rounds_won < 2
    dice_score_1 += rand(13)
    dice_score_2 += rand(13)
    if dice_score_1 > dice_score_2
      puts "I win"
      p1_rounds_won += 1
      dice_score_1 = 0
      dice_score_2 = 0
    elsif dice_score_1 < dice_score_2
      puts "I lose"
      p2_rounds_won += 1
      dice_score_1 = 0
      dice_score_2 = 0
    else
      puts "Draw"
      dice_score_1 = 0
      dice_score_2 = 0
    end
end
