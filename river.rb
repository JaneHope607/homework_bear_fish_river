class River

    attr_reader :name, :fish_number
    
    def initialize(name, fish_number)
            @name = name
            @fish_number = fish_number
    end

    def count_fish()
        return @fish_number.length()
    end

end