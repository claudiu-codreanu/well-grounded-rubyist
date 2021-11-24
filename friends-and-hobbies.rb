class Person
    ALL = []
    attr_reader :name, :friends, :hobbies

    def initialize(name)
        @name = name
        @friends = []
        @hobbies = []

        ALL << self
    end

    def has_friend(p)
        @friends << p
    end

    def has_hobby(h)
        @hobbies << h
    end

    def Person.method_missing(m, *args)
        if m.to_s.start_with?("all_with_")
            attr = m.to_s[9..-1]

            if Person.public_method_defined?(attr)
                ALL.find_all {|p| p.send(attr).include?(args[0])}
            else
                raise ArgumentError, "Can't find #{attr}"
            end
        else
            super
        end
    end
end

john = Person.new("John")
paul = Person.new("Paul")
george = Person.new("George")
ringo = Person.new("Ringo")

john.has_friend(paul)
john.has_friend(george)
george.has_friend(paul)

ringo.has_hobby("rings")

Person.all_with_friends(paul).each do |person|
    puts "#{person.name} is friends with #{paul.name}"
end

Person.all_with_hobbies("rings").each {|person| puts "#{person.name} is into rings"}

puts

eric = Person.new("Eric B.")
rakim = Person.new("Rakim")

eric.has_friend(rakim)

eric.has_hobby("cycling")
rakim.has_hobby("drums")

["cycling", "drums"].each do |hobby|
    Person.all_with_hobbies(hobby).each {|p| puts "#{p.name} is into #{hobby}"}
end