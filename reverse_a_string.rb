def reverse_a_string(string)
  string_index = string.length - 1

  char_array = string.split("")

  reverse_string = ""

  while string_index >= 0
    reverse_string += char_array[string_index]
    string_index -= 1
  end  

  reverse_string
end

puts "TESTING reverse_a_string..."
puts

result = reverse_a_string("abcde")

puts "Your method returned:"
puts result
puts

if result == "edcba"
  puts "PASS!"
else
  puts "F"
end