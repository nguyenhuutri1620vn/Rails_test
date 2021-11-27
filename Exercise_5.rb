#initialize varrible
my_array= []
pre = 0;
count = 1;
#check input
def check(int)
    while !int.is_a?(Integer) || !int.between?(1,99)
        print "Data type input is wrong. Please enter again: "
        int = Integer(gets) rescue false 
    end
    int
end

def create_random_array(input, array = [])
    for i in 0..input
        random = rand(1..9)
        array << random
    end
end

def show_child_array(input, count, my_array, pre)
    for i in 0..input
        if i == input
            puts "Child array increase [#{count}]: #{my_array[i]}"
        elsif my_array[i] >= my_array[i+1]
            puts "Child array increase [#{count}]: #{my_array[pre..i].to_s}"
            pre = i + 1
            count += 1
        end
    end
end

begin
    print "Input number element in your array (<100): "
    input = Integer(gets)rescue false 
    input =  check(input)
    create_random_array(input, my_array)
    puts "Random array: #{my_array.inspect}"
    show_child_array(input, count, my_array, pre)
end