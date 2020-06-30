class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods.map(&:capitalize)
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=age
        @age = age
    end

    def bark
        if @age > 3 
            @bark.upcase
        else
            @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)
        if @favorite_foods.include?(food.capitalize)
            return true
        else 
            return false
        end
    end
end
