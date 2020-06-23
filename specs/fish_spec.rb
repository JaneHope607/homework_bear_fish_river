require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class FishTest < MiniTest::Test


    def setup()
        @fish1 = Fish.new("Salmon")
        @fish2 = Fish.new("Bream")
        @fish3 = Fish.new("Tuna")
        @fish4 = Fish.new("Trout")
        @fish5 = Fish.new("Eel")
    end
end