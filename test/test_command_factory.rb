require 'minitest/autorun'
require './lib/rover'
require './lib/command_factory'

class TestCommandFactory < MiniTest::Unit::TestCase
  
  def setup
    @rover = Rover.new(5,5)
  end
  
  def test_command_left_its_working
    @rover.set_target(0,0,'N')
    @command_factory = CommandFactory.new(@rover)

    assert_equal "0 1 N", @command_factory.handler("LMLMLMLMM")
    assert_equal "2 3 N", @command_factory.handler("MMRMMRMRRM")
  end

  def test_move_to_1_2_N
    @rover.set_target(1,2,'N')
    @command_factory = CommandFactory.new(@rover)
    
    assert_equal '1 3 N', @command_factory.handler('LMLMLMLMM')
  end

  def test_move_to_3_3_E
    @rover.set_target(3,3,'E')
    @command_factory = CommandFactory.new(@rover)
    
    assert_equal '5 1 E', @command_factory.handler('MMRMMRMRRM')
  end
  
end