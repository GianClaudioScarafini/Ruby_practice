def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  race_array.map!.each_with_index do |_element, _index|
    race_array.reverse!
  end
end


p horse_racing_format!(["Abricot du Laudot", "Black Caviar", "Coup de Folie", "Brigadier Gerard"])


# Returns an array of objects returned by the block.
#
# With a block given, calls the block with successive elements; returns an array of the objects returned by the block:
#
# (0..4).map {|i| i*i }                               # => [0, 1, 4, 9, 16]
# {foo: 0, bar: 1, baz: 2}.map {|key, value| value*2} # => [0, 2, 4]
