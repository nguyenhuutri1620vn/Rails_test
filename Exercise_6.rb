numbers = [3, 5, -4, 8, 11, 1, -1, 6]
output_arrays = []
current = 0
count = 0
target_sum = 10
numbers = numbers.uniq
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