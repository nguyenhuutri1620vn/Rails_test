class Staff
    def check_int(int)
        while !int.is_a? (Integer)
            print "Data type input is wrong. Please enter again: "
            int = Integer(gets) rescue false 
        end
        return int
    end
    def check_string(str)
        while str !~ /\D/
            print "Data type input is wrong. Please enter again: "
            str = gets.chomp
        end
    end
    def call
        print "Input number: "
        @stt = Integer(gets) rescue false 
        check_int(@stt)
        print "Input code: "
        @id = gets.chomp
        print "Input name: "
        @name = gets.chomp
        check_string(@name)
        print "Input year of birth: "
        @year = Integer(gets) rescue false 
        @year = check_int(@year)
        print "Input position: "
        @position = gets.chomp
        check_string(@position)
        print "Input salary per day: "
        @salary = Integer(gets) rescue false
        @salary = check_int(@salary)
        print "Input day: "
        @timework = Integer(gets) rescue false
        @timework = check_int(@timework)
    end
    def to_s
        puts "Code: #{@id}, name : #{@name}, age: #{2021 - @year}, position: #{@position.capitalize}, salary: #{@salary * @timework}"
    end
end
staff = Staff.new
staff.call
puts("---------RESULTS---------")
staff.to_s


