require 'pry-byebug'

def capitalize(first_name, last_name)
  return "#{first_name.capitalize}, #{last_name.capitalize}"
end
binding.pry
p capitalize("this","is")