require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")
    end

    def test_can_create_bear()
        assert_equal(Bear, @bear.class())
    end

    def test_bear_name()
        assert_equal("Yogi", @bear.name())
    end

    def test_bear_type()
        assert_equal("Grizzly", @bear.type)
    end

    def test_get_fish_from_river()

    end

end