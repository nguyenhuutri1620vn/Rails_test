require 'pg'

def config_db
    PG.connect :dbname => 'exercise_3', :user => 'postgres', :password => 'postgres'
end