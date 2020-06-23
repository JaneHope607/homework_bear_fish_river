require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

    def setup()
        @fish1 = Fish.new("Salmon")
        @fish2 = Fish.new("Bream")
        @fish3 = Fish.new("Tuna")
        @fish4 = Fish.new("Trout")
        @fish5 = Fish.new("Eel")

        @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]

        @river = River.new("Amazon", @fishes)

    end

    def test_can_create_river()
        assert_equal(River, @river.class())
    end

    def test_get_river_name()
        assert_equal("Amazon", @river.name())
    end

    def test_count_fish()
        assert_equal(5, @river.count_fish())
    end

    def test_remove_fish()
        @river.remove_fish(@fish3)
        assert_equal(4, @river.count_fish)
    end

end