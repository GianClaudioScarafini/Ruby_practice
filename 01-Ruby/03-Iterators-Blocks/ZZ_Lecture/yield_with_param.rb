#this is work ocrecttely 
#
#
# 5.times do |second|
#   p "do this for each second: #{second}"
# end
# ^ this is work ocrecttely 

def repeate_v01(n_time)
  (1..n_time).each do |i|
    yield # this does *not* get the parametr
  end
end
def repeate_v02(n_time)
  (1..n_time).each do |i|
    yield(i) # this get the parametr
  end
end

repeate_v01(5) do
  p "test"
end
repeate_v02(5) do |i|
  p "this will return something #{i}"
end
repeate_v01(5) do |i|
  p "this will return something #{i}"
end

# p repeate_v02.__method__