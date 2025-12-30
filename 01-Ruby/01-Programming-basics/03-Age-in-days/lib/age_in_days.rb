# This "require" line loads the contents of the "date" file from the standard
# Ruby library, giving you access to the Date class.
require "date"

def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth
  today = DateTime.now
  bday = DateTime.new(year, month, day)

  # return [today,bday, (today - bday).to_i]
  (today - bday).to_i
end

# p age_in_days(28,06,1990)
