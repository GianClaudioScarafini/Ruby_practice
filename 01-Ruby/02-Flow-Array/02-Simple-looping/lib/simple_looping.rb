def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  if min > max
    return -1
  else
    mylist = (min..max).to_a
    # return mylist
    result = 0
    for i in mylist
      result += i
    end
    return result
  end
end

p sum_with_for(1,10)

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  if min > max
    return -1
  else
    result = 0
    current = min
    while current <= max
      result += current
      current += 1
    end
    return result
  end

end
