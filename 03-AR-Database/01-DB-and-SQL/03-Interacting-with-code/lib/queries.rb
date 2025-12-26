gem 'activerecord', '~> 7.1.3.2'
gem 'sqlite3', '~> 1.7.3'
# ^ DO NOT CHANGE! This makes sure your system uses the correct versions of activerecord and sqlite3

require "sqlite3"
DB = SQLite3::Database.new(File.join(File.dirname(__FILE__), 'db/jukebox.sqlite'))

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  # Should return an integer of the number of artists.
  db.execute("SELECT COUNT(*) FROM artists").flatten.first
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name.
  # Should return an integer of the number of rows.
  # query = "SELECT COUNT(*) FROM VALUE (?)"
  query = "SELECT COUNT(*) FROM #{table_name}"
  return db.execute(query).flatten.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically.
  # Should return an array of strings sorted alphabetically.
  query = "SELECT artists.name FROM artists ORDER BY artists.name"
  return DB.execute(query).flatten
end

def love_tracks(db)
  # TODO: return array of love songs' names.
  # Should return an array of strings (track names).
  query = "SELECT tracks.name FROM tracks WHERE tracks.name LIKE '%Love%'"
  return DB.execute(query).flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending).
  # Should return an array of strings.
  query = <<~SQL
    SELECT name
    FROM tracks
    WHERE milliseconds > ? * 60000
    ORDER BY milliseconds ASC
  SQL
  return db.execute(query, min_length).flatten
end

def albums_per_artist(db)
  # TODO: return an array of arrays, each containing the artist's name and the number of albums they have
  query = <<~SQL
    SELECT artists.name, COUNT(*) AS album_count
    FROM artists
    JOIN albums ON artists.id = albums.artist_id
    GROUP BY artists.name
    ORDER BY artists.name
  SQL
  db.execute(query)
end
