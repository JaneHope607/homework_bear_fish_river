require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Amazon", @fish)

        @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
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

end