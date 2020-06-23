class Bear

    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def get_fish_from_river(fish)
        @fishes.delete(fish)
        @stomach.push(fish)
    end

end