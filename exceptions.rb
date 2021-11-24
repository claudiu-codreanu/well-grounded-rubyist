def divide_by_input
    print "Enter a number: "
    n = gets.to_i

    # binding.irb

    begin
        result = 100 / n
    rescue ZeroDivisionError
        puts "Division didn't work. Did you enter zero?"
        exit
    end

    puts "100 / #{n} = #{result}"
end

divide_by_input