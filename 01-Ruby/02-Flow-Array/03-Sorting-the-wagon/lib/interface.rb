require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/3.3.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/3.3.5/String.html#method-i-chomp

3.times do
  name = gets.chomp
  @students ||= []
  @students << name
end

if @students.empty?
  puts "The wagon has no students."
else
  sorted_students = wagon_sort(@students)
  ## "The wagon students are: Alice, charlie, daniel\n" to match /Alice, Bob, charlie and daniel/
  puts "The wagon students are: #{sorted_students[0..-2].join(', ')} and #{sorted_students[-1]}."
end
# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
