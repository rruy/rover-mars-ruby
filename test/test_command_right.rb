require 'minitest/autorun'
require './lib/rover'
require './lib/command_left'

class TestCommandRight < MiniTest::Unit::TestCase
  
  def setup
    @rover = Rover.new(5,5)
  end
  
  def test_turn_right
    @rover.set_target(0,0,'N')
    @command_right = CommandRight.new(@rover)

    assert_equal 'E', @command_right.move
    assert_equal 'S', @command_right.move
    assert_equal 'W', @command_right.move
    assert_equal 'N', @command_right.move
  end

  def test_turn_right_with_step_2
    @rover.set_target(0,0,'N')
    @command_right = CommandRight.new(@rover)

    assert_equal 'S', @command_right.move(2)
    assert_equal 'N', @command_right.move(2)
  end

end