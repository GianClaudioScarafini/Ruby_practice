def bugged_concatenate(*args)
  concatenated_string = ""
  args.each do |element|
    concatenated_string = concatenated_string + element.to_s
  end
  return concatenated_string.upcase
end

def build_1984_title
  bugged_concatenate(1, "9", 84, " ", "George Orwell")
end

p build_1984_title
