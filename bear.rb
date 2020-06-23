class Bear

    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def get_fish_from_river(fish)
        take fish away from river
        @stomach.push(fish)
    end

end