#initialize varrible
my_arrays= []
pre = 0;
count = 1;
#check input
def check(int)
    while !int.is_a?(Integer) || !int.between?(1,99)
        print "Data type input is wrong. Please enter again: "
        int = Integer(gets) rescue false 
    end
    return int
end
#input and create random array
print "Input number element in your array (<100): "
input = Integer(gets)rescue false 
input =  check(input)
for i in 1..input
    random_number = rand(1..9)
    my_arrays << random_number
end
#show array 
puts "Random array: #{my_arrays.inspect}"
#show child array
for i in 0..input-1
    if i == input -1
        puts "Child array increase [#{count}]: #{my_arrays[i]}"
    elsif my_arrays[i] >= my_arrays[i+1]
        puts "Child array increase [#{count}]: #{my_arrays[pre..i].to_s}"
        pre = i + 1
        count += 1
    end
end

# Code e viết gọn, có tách hàm, có comment là một điểm cộng
# A có vài góp ý nhỏ:
# 1. Hàm ruby bình thường cuối hàm e kg cần chữ return nhé. VD: return int -> int. và e cũng nên hạn chế đặt tên biến trùng với kiểu dữ liệu nhé
# 2. Em có thể xem xét tách thêm hàm xử lý input của user, rồi trong main mình chỉ gọi ra + logic đơn giản thôi ah. Mục đích là để khi ng khác 
# đọc vào hàm main của e sẽ hiểu tổng thể cách e đang làm là gì, mà chưa cần đi vào chi tiết các hàm
# 3. Em hoàn toàn có thể thêm 1 line trống 
