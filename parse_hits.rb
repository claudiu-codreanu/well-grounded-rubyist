File.open("data/hits.txt", "r") do |f|
    years = {}

    f.each do |line|
        album, artist, year = line.chomp.split("/")
        puts "\"#{album},\" performed by #{artist}, reached #1 in #{year}"

        years[year] ||= 0
        years[year] += 1
    end

    puts
    puts "===================================="
    puts

    max_year = years.max {|(k1, v1), (k2, v2)| v1 <=> v2 }.first
    puts "#{max_year} was the best year for hit music between 2010 and 2014."

    puts
end