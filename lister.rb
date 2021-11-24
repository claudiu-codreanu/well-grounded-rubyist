class Lister < BasicObject
    attr_reader :list

    def initialize
        @list = ""
        @level = 0
    end

    def indent(msg)
        " " * @level + msg.to_s
    end

    def method_missing(m, &block)
        @list << indent(m) + ":\n"

        @level += 2
        @list << indent(yield(self)) if block
        @level -= 2

        @list << "\n"
        return ""
    end
end

lister = Lister.new

lister.groceries do |item|
    item.name {"Apples"}
    item.quantity {10}

    item.name {"Sugar"}
    item.quantity {"1 lb"}
end

lister.freeze do |item|
    item.name {"Ice cream"}
end

lister.inspect do |item|
    item.item {"Car"}
end

lister.sleep do |item|
    item.hours {8}
end

lister.print do |item|
    item.book {"Chapter 10"}
    item.letter {"to editor"}
end

puts lister.list