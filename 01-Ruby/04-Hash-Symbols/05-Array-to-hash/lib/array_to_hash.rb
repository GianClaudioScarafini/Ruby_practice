def array_to_hash(array)
  # TODO: implement the method :)
  my_hash = {}
  if block_given?
    array.each_with_index do |element, i|
      my_hash["#{yield i}"] = element
    end
  else
    array.each_with_index do |element, i|
      my_hash["#{i}"] = element
    end

  end

  return my_hash
end


p array_to_hash(["array", "casa"])
