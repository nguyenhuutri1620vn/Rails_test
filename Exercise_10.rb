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
        output_numbers << [numbers[current], numbers[count_with_current], numbers[count]] if target_sum == numbers[current] + numbers[count_with_current] + numbers[count]
    end
    output_numbers
end

#Initialize varrible
numbers = [12, 1, 3, 2, -6, 5, -8, 6]
target_sum = 0

p output_handle_elements_in_array_equal_target_sum(numbers, target_sum)