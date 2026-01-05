# this is a file to understand yield 

def timer 
  start_time = Time.now()
  yield #extecure a pice of code that has been added as an argument
  end_time = Time.now()
  elapsed = end_time-start_time
  p "it took me this time: #{elapsed}"
end

timer do 
  p "I am doing some works it will take 2 sec"
  sleep(2)
  p "just finished"
end

timer do 
  p "I am doing some works it will take 5 sec"
  sleep(5)
  p "just finished"
end