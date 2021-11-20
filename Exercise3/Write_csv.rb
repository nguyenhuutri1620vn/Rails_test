require 'csv'

module Write_CSV
    lines = 500000
    CSV.open("Exercise_3_csv.csv", "w") do |csv|
            csv << ["name", "Email", "Phone", "Address", "Day_of_Birth","Profile"]
            for i in 1..lines
            csv << ["Nguyen Van A #{i}", "nguyenvana#{i}@gmail.com", "0123456897", "Ho Chi Minh city","2000/01/01", "Like TV 100\", Some special charactor: \\ / '' $ ~ & @ # ( ; \""]
        end
    end
end
