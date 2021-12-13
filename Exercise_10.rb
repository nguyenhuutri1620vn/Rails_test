# handle array 
def output_handle_elements_in_array_equal_target_sum(numbers = [], target_sum)
    current = 0
    count_with_current = 1
    count = 1
    output_numbers = []

    while current < numbers.length && count < numbers.length
        count += 1
        if count == numbers.length
            count_with_current += 1
            count = count_with_current + 1
            if count_with_current == numbers.length - 1
                current += 1
                count_with_current = current + 1
                count = count_with_current + 1
                break if current == numbers.length - 2
            end
        end
        p "#{current} + #{count_with_current} + #{count}"
        output_numbers << [numbers[current], numbers[count_with_current], numbers[count]] if target_sum == numbers[current] + numbers[count_with_current] + numbers[count]
    end
    output_numbers
end

#Initialize varrible
numbers = [12, 1, 3, 2, -6, 5, -8, 6]
target_sum = 0

p output_handle_elements_in_array_equal_target_sum(numbers, target_sum)

#Để đỡ tốn thời gian của anh thì em giải thích luôn.
#Chuong trinh em chi su dung 1 vong lap
#Em sẽ dùng 3 biến đếm là current,  count_with_current và count. Đại diện cho vị trí 3 phần tử trong mảng
#B1: current và vị trí count_with_current hiện tại sẽ đi chung với nhau cho tới khi count == numbers.length -  1  
#B2: Sau đó count_with_current =+ 1 và count = count_with_current + 1, tiep tuc nhu B1
#B3: neu count_with_current = numbers.length -  1. Thì current =+ 1,
#count_with_current = current + 1, count =  count_with_current + 1 (Tránh duyệt lại các phần tử trước đó).tiep tuc B1
#Chương trình sẽ dừng khi current == numbers.length - 2
#Anh có thể gỡ comment line 27 để dễ hình dung hơn