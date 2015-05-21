def always_three(user_number)
(((user_number +5) * 2 - 4) / 2 - user_number)
end

puts "Give me a number."
result = gets.to_i

puts "Always " + always_three(result).to_s