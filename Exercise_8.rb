#check
def check_array_b_have_belong_array_a(array_a = [], array_b = [], cu = 0, co = -1)
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

array = [5, 1, 22, 26, 6, -1, 8, 10]
subarray = [1, 6, -1, 10]

#output
begin
    puts "Output: #{check_array_b_have_belong_array_a(array, subarray, current = 0, count = -1)}"
end