def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  first_array = []
  second_array = []
  array.each do |element|
    first_array << element if element.length == size
    second_array  << element if element.length != size
    
  end
  return[first_array.sort!,second_array.sort!]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end
