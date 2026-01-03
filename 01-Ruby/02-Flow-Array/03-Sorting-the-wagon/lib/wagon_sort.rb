def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  students.sort_by { |name| name.downcase }
end


# p wagon_sort(["BOB", "ALICE", "CHARLIE"]) # ["ALICE", "BOB", "CHARLIE"]
# p wagon_sort([]) # ["ALICE", "BOB", "CHARLIE"]
