a = [5, 1, 22, 26, 6, -1, 8, 10]
b = [1, 6, -1, 10]
current = 0
count = -1
#check
def check_array_b_have_belong_array_a(array_a = [], array_b = [], cu, co)
    result = true
    while cu < array_b.length
        if array_b[cu] != array_a[co] 
            co += 1 
            if co > array_a.length + 1
                result = false
                break
            end
        else
            cu +=1
            co +=1
        end
    end
    result
end

#output
begin
    puts "Output: #{check_array_b_have_belong_array_a(a, b, current, count)}"
end

# Code e ngắn gọn, kg dùng include? là một điểm cộng 
# Tên biến nên đặt có ý nghĩa hơn nhé e, e có thể vừa khai báo, vừa khởi tạo 
# Vd: check_array_b_have_belong_array_a(array_a = [], array_b = [], current = 0, coount = -1)
# a, b e có thể đặt là arrays và subarray
# L
