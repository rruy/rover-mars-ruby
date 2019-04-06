require './lib/rover'
require './lib/input_adapter'

class Program

  def self.run(file_name = "input.txt")
    command_params = InputAdapter.new(file_name).translate
    rover = Rover.new(*command_params.inital_coords)
    output = ''
    command_params.directions.each do |item|
      output << rover.move(item)
    end
    puts output
    output
  end

end

ARGV.each {|file| Program.run(file) }

