require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
while true
  p "ask to the coch"
  answer = gets.chomp.to_s
  p coach_answer(answer)
end
