#First hash
puts "Which word would you like to look up? Bear, Salmon, or River?"
word = gets.chomp.capitalize

definition = {
  "Bear" => "A creature that fishes in the river for salmon.",
  "River" => "A body of water that contains salmon, and sometimes bears.",
  "Salmon" => "A fish, sometimes in a river, sometimes in a bear, sometimes in both.",
}

puts definition[word]
