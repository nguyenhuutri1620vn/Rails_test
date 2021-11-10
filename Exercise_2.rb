class Staff
    def check_int(int)
        while !int.is_a? (Integer)
            print "Date type input is wrong. Please enter again: "
            int = Integer(gets) rescue false 
        end
        return int
    end
    def check_string(str)
        while str !~ /\D/
            print "Date type input is wrong. Please enter again: "
            str = gets.chomp
        end
    end
    def call
        print "Input number: "
        @_stt = Integer(gets) rescue false 
        check_int(@_stt)
        print "Input code: "
        @_id = gets.chomp
        print "Input name: "
        @_name = gets.chomp
        check_string(@_name)
        print "Input year of birth: "
        @_year = Integer(gets) rescue false 
        @_year = check_int(@_year)
        print "Input position: "
        @_position = gets.chomp
        check_string(@_position)
        print "Input salary: "
        @_salary = Integer(gets) rescue false
        @_salary = check_int(@_salary)
        print "Input day: "
        @_timework = Integer(gets) rescue false
        @_timework = check_int(@_timework)
    end
    def to_s
        puts "Code: #{@_id}, name : #{@_name}, age: #{2021 - @_year}, position: #{@_position.capitalize}, salary: #{@_salary * @_timework}"
    end
end
staff = Staff.new
staff.call
puts("---------RESULTS---------")
staff.to_s


