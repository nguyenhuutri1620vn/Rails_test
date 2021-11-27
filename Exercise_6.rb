numbers = [3, 5, -4, 8, 11, 1, -1, 6]
output_arrays = []
current = 0
count = 0
target_sum = 10
while current < numbers.length do
    if current < numbers.length
        count += 1
        if count == numbers.length
            current += 1
            count = current + 1
            if count == numbers.length
                break
            end
        end
    end
    # puts "#{current} + #{count}"
    if numbers[current].to_i + numbers[count].to_i == target_sum
        output_arrays << numbers[current].to_i
        output_arrays << numbers[count].to_i
    end
end
puts "Output: #{output_arrays.uniq}"

# Giải thuật của e ok, kg sử dụng include? để check phần thử trong mảng khác
# Những dòng if mà chỉ có 1 line bên trong e có thể viết 1 dòng nhé
# Vì e đã khai báo mảng kiểu int rồi, nên e kg cần ép kiểu .to_i
# Line 19, 20 e có thể viết trong cùng 1 dòng output_arrays << numbers[current].to_i << numbers[count].to_i
# E có thể xem xét tách hàm ra để xử lý, bên ngòai mình chỉ call hàm và show k
