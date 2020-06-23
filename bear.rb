class Bear

    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def food_count()
        return @stomach.length()
    end

    def add_to_stomach(fish)
        @stomach.push(fish)
    end

    def roar()
        return "ROARRR"
    end
end