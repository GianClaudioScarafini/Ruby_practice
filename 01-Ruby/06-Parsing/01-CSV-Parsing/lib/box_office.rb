require 'csv'
require 'date'

file_path = "lib/movies.csv"
p file_path
def most_successful(number, max_year, file_path)
  # TODO: return an array of most successful movies before `max_year`
  list = []
  CSV.foreach(file_path) do |row|
    list << { "name": row[0], "year": row[1], "earnings": row[2] } if row[1].to_i <= max_year 
  end
  return list.first(number)
end
p most_successful(5,2000,file_path)