require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")

        @fish1 = Fish.new("Salmon")
        @fish2 = Fish.new("Bream")
        @fish3 = Fish.new("Tuna")
        @fish4 = Fish.new("Trout")
        @fish5 = Fish.new("Eel")

        @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]

        @river = River.new("Amazon", @fishes)
    end

    def test_bear_name()
        assert_equal("Yogi", @bear.name())
    end

    def test_bear_type()
        assert_equal("Grizzly", @bear.type)
    end

    def test_food_count()
        assert_equal(0, @bear.food_count())
    end

    def test_gets_fish_from_river()
        @river.remove_fish(@fish1)
        @river.remove_fish(@fish2)
        @bear.add_to_stomach(@fish1)
        @bear.add_to_stomach(@fish2)
        assert_equal(3, @river.count_fish())
        assert_equal(2, @bear.food_count())
    end

    def test_roar()
        assert_equal("ROARRR", @bear.roar)
    end

end