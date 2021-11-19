require 'pg'
require 'csv'

begin
    con = PG.connect :dbname => 'exercise_3', :user => 'postgres', :password => 'postgres'
    
    con.exec "DROP TABLE IF EXISTS Users"
    con.exec "CREATE TABLE Users(Id SERIAL PRIMARY KEY, 
        name VARCHAR(20), gmail VARCHAR(30), phone varchar(10), address varchar(30), day_of_birth date, profile text)"

    CSV.open("Exercise_3_csv.csv", "w") do |csv|
        csv << ["name", "Email", "Phone", "Address", "Day_of_Birth","Profile"]
        for i in 1..500000
          csv << ["Nguyen Van A #{i}", "nguyenvana#{i}@gmail.com", "0123456897", "Ho Chi Minh city","2000/01/01", "Like TV 100\", Some special charactor: \\ / '' $ ~ & @ # ( ; \""]
        end
    end

    fields_to_insert = %w{ name Email Phone Address Day_of_Birth Profile }
    rows_to_insert = []
    starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    CSV.read("Exercise_3_csv.csv")
    CSV.foreach("Exercise_3_csv.csv", headers: true) do |row|
        row_to_insert = row.to_hash.values_at(*fields_to_insert)
        rows_to_insert << row_to_insert
        con.exec "INSERT INTO public.users(name,gmail,phone,address,day_of_birth,profile) values ('#{row_to_insert.join("', '")}')"
    end
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    elapsed = ending - starting
    puts "Total time to read file and import database : #{elapsed}"
rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end

# Phần code e trình bày gọn, dễ đọc, biết sử dụng foreach, close kết nối là một điểm cộng
# db.exec, phần này a thấy e đang insert từng dòng vào trong db, tức là với 500k lines thì mình insert 500k lần về performance có thể bị ảnh hưởng
# do e hit vào db nhiều quá
# A suggest e là
#   1. sử dụng transaction -> e có thể tìm hiểu nó là gì
#   2. build ra 1 câu sql, nhưng khi nào đủ khoảng 5k lines (do e quyết định), rồi hẵn insert vào db. Như vậy sẽ giảm số lần e tương tác db ah

# Em trình bày trong 1 file vẫn ok, nhưng khi vào thực tế: e nên tách file ra để dễ quản lý. Vd: file về kết nối db, file để ghi ra file csv,
# file để import từ csv vào db -> mục đích là e sẽ dễ dàng quản lý và xử lý khi sau này có issues. Vd: không connect được db, thì e chỉ cần vào
# file quản lý cấu hình thôi, chứ kg cần scan hết trong 1 file tổng lớn. User name và pass em nên để trong file cấu hình (connect) để bảo mật hơn

# Sao a thấy e dùng CSV.read("Exercise_3_csv.csv"), rồi CSV.foreach nữa e nhỉ ?
