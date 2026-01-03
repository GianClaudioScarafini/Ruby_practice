def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  if number.class == "String"
    false
  elsif (number.to_s).length <=2
    true
  else
    false
  end
end

  # colorful_numbers = [ 0, 1, 23, 263, 987 ]
  # not_colorful_numbers = [ 10, 236, 999 ]
  def is_num?(value)
    if value.class ="String"
      true
    else
      false
    end

  end

  my_numer = 987

  def foo(number)
    num_tolist = number.to_s.split("")
    length_list = num_tolist.length
    # return [num_tolist,length_list,(0..length_list-1).to_a]
    for i in (0..length_list-1)
      return "value: #{i}: #{arr{num_tolist}}"
    end
  end

  p foo(my_numer)

# ["1", "2", "3"].map(&:to_i)        # Using &:to_i
# ["1", "2", "3"].map { |x| x.to_i } # Using explicit block