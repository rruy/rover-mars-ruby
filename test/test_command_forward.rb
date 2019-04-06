require 'minitest/autorun'
require './lib/rover'
require './lib/command_forward'

class TestCommandForward < MiniTest::Unit::TestCase
  
  def setup
    @rover = Rover.new(5,5)
  end
  
  def test_command_left_its_working
    @rover.set_target(0,0,'N')
    @command_forward = CommandForward.new(@rover)
    
    assert_equal [1, 0], @command_forward.move
    assert_equal [2, 0], @command_forward.move
    assert_equal [3, 0], @command_forward.move
    assert_equal [4, 0], @command_forward.move
  end

  def test_limit
    @rover.set_target(5,5,'N')
    @command_forward = CommandForward.new(@rover)

    exception = assert_raises CommandForward::OutOfBound do
      @command_forward.move
    end

    assert_equal('Rover out in space', exception.message)
  end

end