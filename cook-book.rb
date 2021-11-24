class CookBook
    attr_accessor :title, :author

    def initialize
        @recipes = []
    end

    def method_missing(m, *args, &block)
        @recipes.public_send(m, *args, &block)
    end
end


class Recipe
    attr_accessor :main_ingredient

    def initialize(ingredient)
        @main_ingredient = ingredient
    end
end

cb = CookBook.new

cb << Recipe.new("chicken")
cb << Recipe.new("flour")

chicken_dishes = cb.select {|r| r.main_ingredient == "chicken"}
chicken_dishes.each {|d| puts d.main_ingredient}