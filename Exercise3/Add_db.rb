require 'csv'
require './Config.rb'
require 'pg'

module Add_db
    con = self.config_db
    fields_to_insert = %w{ name Email Phone Address Day_of_Birth Profile }
    rows_to_insert = []
    insert_data = ''
    starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    CSV.foreach("Exercise_3_csv.csv", headers: true) do |row|
        row_to_insert = row.to_hash.values_at(*fields_to_insert)
        rows_to_insert << row_to_insert
        insert_data <<  "INSERT INTO public.users(name,gmail,phone,address,day_of_birth,profile) values ('#{row_to_insert.join("', '")}');\n"
    end
    con.exec insert_data
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    elapsed = ending - starting
    puts "Total time to read file and import database : #{elapsed}"
end