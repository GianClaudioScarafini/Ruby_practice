require_relative "compute_name"

# TODO: ask for the first name
p "what is your first name?"
first_name = gets.chomp.to_s
# TODO: ask for the middle name
p "what is your middle name?"
middle_name = gets.chomp.to_s
# TODO: ask for the last name
p "what is your last name?"
last_name = gets.chomp.to_s

# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
p "Hello, " + compute_name(first_name, middle_name, last_name)
