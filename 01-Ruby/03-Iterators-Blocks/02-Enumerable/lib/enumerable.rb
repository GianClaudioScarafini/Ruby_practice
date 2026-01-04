def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  result = 0
  #       You should use Enumerable#each_with_index
  array.each_with_index do |val, _ind|
    result += val if _ind.odd?
  end
  result
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select do |num|
    num.modulo(2).zero?
  end
end
# p even_numbers([3, 4, 7, 9, 10, 16])

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject do |word|
    word.length > max_length
  end
end
p short_words(["you", "are", "my", "playground", "love"], 4)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find do |e|
    e < limit
  end
end
# p first_under([13, 21, 7, 0, 11, 106], 10)

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map do |elem|
    "#{elem}!"
  end
end

p add_bang(["yi", "ha"])

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use Enumerable#reduce
  array.reduce("") do |result, str|
    result + str
  end
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use Enumerable#each_slice
  array.each_slice(2).map { |slice| slice.sort }
end
