File.open("data/records.txt", "r") do |f|
    while record = f.gets
        name, nationality, instrument, dates = record.chomp.split("|")
        puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}."
    end
end

puts
puts "======================================"
puts

File.open("data/records.txt", "r") do |f|
    f.each do |record|
        name, nationality, instrument, dates = record.chomp.split("|")
        puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}"
    end
end