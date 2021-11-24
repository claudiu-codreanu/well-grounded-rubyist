require 'socket'
require 'date'

s = TCPServer.new(3939)

while (conn = s.accept)
    Thread.new(conn) do |c|
        c.print "Hello, what's your name? "
        name = c.gets.chomp

        c.print "Hi, #{name}. Here's the date: "
        c.puts Date.today

        c.puts "Bye now, #{name}!"
        c.close
    end
end

s.close
puts "Bye!"

