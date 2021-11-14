array = [] # biến chứa nhiều phần tử nên là số nhiều
min = array[0]
$i = 0 # tại sao e dùng $i mà không dùng biến bình thường e?
while $i <= 100  do
    $i+=1
    print "Input number[#{$i}]: "
    n = Integer(gets) rescue false 
    array << n; # dấu ; cuối câu không cần thiết
    while !n.is_a? (Integer)
        array.pop()
        $i-=1
        puts "Date type input is wrong. Please enter next number!!" # mình đang nhập là số nhưng Date type là sao e ?
        break
    end
    if n === -1 # sao e dùng === mà không dùng == ? biến -1 e có thể khai báo hằng số để dễ đọc hơn. vd STOP_SIGNAL = -1 
        array.pop()
        puts "Array: #{array.inspect}"
        puts "Min of array: #{array.min}"
        break
    end
end

# Chương trình e viết gọn gàng, nhưng a thấy phong cách viết $ không giống ruby, thường thì $ mình sẽ dùng trong bash script
