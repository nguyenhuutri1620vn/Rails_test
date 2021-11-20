require 'pg'
require './Config.rb'

module Connect
    con = self.config_db
    con.exec "DROP TABLE IF EXISTS Users"
    con.exec "CREATE TABLE Users(Id SERIAL PRIMARY KEY, 
        name VARCHAR(20), gmail VARCHAR(30), phone varchar(10), address varchar(30), day_of_birth date, profile text)"
end