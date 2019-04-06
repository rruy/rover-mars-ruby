require 'minitest/autorun'
require './program'
require 'pry'
require 'pry-nav'

class TestProgram < MiniTest::Unit::TestCase
 
  def test_run_process_returns_valid_output
    output = Program.run
    assert_equal "1 3 N\n5 1 E\n", output
  end

end