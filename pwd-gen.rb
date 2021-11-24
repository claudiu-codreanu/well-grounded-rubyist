
def usage
    <<~MSG

        Generates a random password of a given length, with a certain number of upper case letters, digits, and symbols.
        Usage:
            
        > ruby #{__FILE__} len=N upcase=M digits=K symbols=L
        (where N defaults to 8, upcase to 1, digits to 1, and symbols to 1)
            
        > ruby #{__FILE__} help
        (prints the above usage statement)

    MSG
end


if ARGV.length == 1 && ARGV.first == "help"
    puts usage
    exit
end


letters = [*("a".."z")]
digits = [*("0".."9")]
symbols = %w(~ ! @ # $ % ^ & * - + = : ; / ? . ,)

len = 8
num_upcase = 1
num_digits = 1
num_symbols = 1

pwd = ""

ARGV.each do |arg|
    m = /^(len|upcase|digits|symbols)=(\d+)$/.match(arg)
    next if m.nil?

    (name, value) = m.captures
    value = value.to_i

    case name
    when "len"
        len = value
    when "upcase"
        num_upcase = value
    when "digits"
        num_digits = value
    when "symbols"
        num_symbols = value
    end
end

if (num_upcase + num_digits + num_symbols) >= len
    puts "len must be greater than upcase + digits + symbols"
    exit
end

h = {upcase: num_upcase, digits: num_digits, symbols: num_symbols, letters: len - num_upcase - num_digits - num_symbols}

until h.length.zero?
    k = h.keys.sample
    val = h[k]

    if val.zero?
        h.delete(k)
        next
    end

    h[k] -= 1

    case k
    when :upcase
        pwd << letters.sample.upcase
    when :digits
        pwd << digits.sample
    when :symbols
        pwd << symbols.sample
    when :letters
        pwd << letters.sample
    end
end

puts "=" * len
puts pwd
puts "=" * len