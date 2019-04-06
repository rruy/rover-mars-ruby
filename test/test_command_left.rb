require 'minitest/autorun'
require './lib/rover'
require './lib/command_left'

class TestCommandLeft < MiniTest::Unit::TestCase
  
  def setup
    @rover = Rover.new(5,5)
  end
  
  def test_command_left_its_working
    @rover.set_target(0,0,'N')
    @command_left = CommandLeft.new(@rover)
    assert_equal 'W', @command_left.move
    assert_equal 'S', @command_left.move
    assert_equal 'E', @command_left.move
    assert_equal 'N', @command_left.move
  end

  def test_command_left_with_step_2
    @rover.set_target(0,0,'S')
    @command_left = CommandLeft.new(@rover)
    
    assert_equal 'N', @command_left.move(2)
    assert_equal 'S', @command_left.move(2)
  end

end