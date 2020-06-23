class River

    attr_reader :name, :fish
    
    def initialize(name, fish)
            @name = name
            @fish = []
    end

    def count_fish()
        return @fish.length()
    end

end