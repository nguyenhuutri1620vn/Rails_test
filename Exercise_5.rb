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
        puts "Child array increase [#{count}]: #{my_arrays[pre..i]}"
    elsif my_arrays[i] >= my_arrays[i+1]
        puts "Child array increase  [#{count}]: #{my_arrays[pre..i]}"
        pre = i + 1
        count += 1
    end
end