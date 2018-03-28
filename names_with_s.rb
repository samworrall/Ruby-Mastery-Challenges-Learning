#Client who hates Steve
puts "What is your name?"
name = gets.chomp

if name.chr.downcase == "s"
  puts "#{name.upcase}!!"
else
  puts "Hi #{name.capitalize}!"
end
