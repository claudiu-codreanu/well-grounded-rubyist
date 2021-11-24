require 'socket'

server = TCPServer.new 3939
connections = []

def broadcast(connections, msg, originator)
    connections.each do |c|
        c.puts msg if c != originator
    end
end

while(conn = server.accept)
    Thread.new(conn) do |c|
        c.print "Hello, what's your name? "
        name = c.gets.chomp

        c.puts "Hello #{name}, welcome to our chat room!"
        connections << c

        broadcast(connections, "#{name} is in the room", c)
        puts "#{name} has joined"

        while(msg = c.gets)
            broadcast(connections, "#{name}: #{msg}", c)
        end

        c.close
        connections.delete c

        broadcast(connections, "#{name} has left the room", c)
        puts "#{name} has left"
    end
end