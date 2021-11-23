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

# Code của e đang là fetch lên toàn bộ trên RAM rồi xử lý insert 1 lần, như vậy sẽ nhanh nhưng tốn resource
# Để cân bằng, e có thể thêm 1 biến đếm count, khi count = 1 batch (số e qui định, vd: 5, 10k) thì e sẽ save nó xuống db, đồng thời clear
# biến insert_data, rồi bắt đầu add lại vào biến đó 
# Tên file e kg cần viết hoa nhé, trong trường hợp này e nên viết thường.
# con.exec "DROP TABLE IF EXISTS Users" -> nên nằm trong hàm tạo bảng nếu chưa tồn tại. Users -> t
