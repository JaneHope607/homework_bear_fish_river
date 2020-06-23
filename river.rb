class River

    attr_reader :name 
    attr_accessor :fishes
    
    def initialize(name, fishes)
        @name = name
        @fishes = fishes
    end

    def count_fish()
        return @fishes.length()
    end

    def remove_fish(name)
        @fishes.delete(name)
    end

end