def palindrome?(a_string)
  if a_string.empty?
    false
  else
    purge = a_string.downcase.gsub(/[^a-z]/, '')
    # TODO: check if a_string is a palindrome
    chars = purge.downcase.chars
    reverse_chars = chars.reverse
    return chars == reverse_chars
  end
end