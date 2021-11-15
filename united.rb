begin
  puts "100円を何人で分けますか？数字で入力してください。"
  n = gets.chomp

  puts "1人あたり: #{100 / n.to_i}"
  puts "余り： #{100 % n.to_i}"
end until n == "0" or n == "1" or n == "2"
n.to_i
