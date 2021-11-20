require './Write_csv.rb'
require './Config.rb'
require './Connect_db.rb'
require './Add_db.rb'

require 'pg'
require 'csv'

begin
    con = self.config_db
    include Write_CSV
    include Connect
    include Add_db
    
rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end