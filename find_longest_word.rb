def find_longest_word(sentence)
  word_array = sentence.split(/[ \?]/)

  longest_word = ""
  word_length = 0

  word_array.each do |word|
    if word.length > word_length
      longest_word = word
      word_length = word.length
    end  
  end  
  longest_word
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end