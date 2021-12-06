numbers = [3, 5, -4, 8, 11, 1, -1, 6]
current = 0
count = 0
target_sum = 10

def add_element_into_new_array(co, cu, sum, num = [], output=[])
    if num[cu] + num[co] == sum
        output << num[cu]
        output << num[co]
    end
end

begin
    while current < numbers.length do
        #handle element in array
        count += 1
        if count == numbers.length
            current += 1
            count = current + 1
            break if count == numbers.length
        end
    
        add_element_into_new_array(count, current, target_sum, numbers,output_arrays = [])
    end
    puts "Output: #{output_arrays.uniq}"
end
