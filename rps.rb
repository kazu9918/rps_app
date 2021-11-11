def janken
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  player_hand = gets.to_i

  program_hand = rand(3)

  if player_hand > 2
    puts "入力された値が無効です"
    return true
  end
  jankens=["グー","チョキ","パー"]

  puts "あなたの手:#{jankens[player_hand]}, プログラムの手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこ"
    return true
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
    puts "あなたの勝ちです"
    return false
  else
    puts "負け"
    return false
  end
end


next_game = true

while next_game
  next_game = janken
end