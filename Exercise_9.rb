#Initialize varrible
numbers = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
output_numbers = []
current = 0
count_with_current = 0
count = 0
sum = 0

# handle array 
def output_handle_elements_in_array_equal_target_sum (current, count_with_current, count, numbers = [], 
    output_numbers = [], sum, target_sum)

    while current < numbers.length 
        count_with_current += 1
        count += 1
        while count < numbers.length
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
            
            sum = numbers[current] + numbers[count_with_current] + numbers[count]
            output_numbers << numbers[current] << numbers[count_with_current] << numbers[count] if sum == target_sum

        end
        break
    end

    #output
    p output_numbers.each_slice(3).to_a
end

begin
    output_handle_elements_in_array_equal_target_sum(current, count_with_current, count, numbers, 
        output_numbers, sum, target_sum)
end
