array = []
min = array[0]
$i = 0
while $i <= 100  do
    $i+=1
    print "Input number[#{$i}]: "
    n = Integer(gets) rescue false 
    array << n;
    while !n.is_a? (Integer)
        array.pop()
        $i-=1
        puts "Date type input is wrong. Please enter next number!!"
        break
    end
    if n === -1
        array.pop()
        puts "Array: #{array.inspect}"
        puts "Min of array: #{array.min}"
        break
    end
end