def palindrome?(string)
  reverse_array = string.split('')
  reverse_array = reverse_array.reverse

  check_string = reverse_array.join('')

  palindrome = false

  if check_string.casecmp(string) == 0
    palindrome = true
  end

  return palindrome
end

puts palindrome?("rgreher")