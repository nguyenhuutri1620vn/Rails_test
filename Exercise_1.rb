my_arrays = []
min = my_arrays[0]
count = 0
STOP_SIGNAL = -1
while count <= 100  do
    count+=1
    print "Input number[#{count}]: "
    input = Integer(gets) rescue false 
    my_arrays << input
    while !input.is_a? (Integer)
        my_arrays.pop()
        count-=1
        puts "Data type input is wrong. Please enter next number!!"
        break
    end
    if input == STOP_SIGNAL
        my_arrays.pop()
        puts "Array: #{my_arrays.inspect}"
        puts "Min of array: #{my_arrays.min}"
        break
    end
end