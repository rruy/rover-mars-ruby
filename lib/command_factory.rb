require './lib/command_left'
require './lib/command_right'
require './lib/command_forward'

class CommandFactory

    attr_accessor :command_base, :command

    def initialize(rover)
      @rover = rover
    end

    def handler(commands)
      commands.each_char do |character|
        case character
        when 'L' then 
          @command = CommandLeft.new(@rover)
        when 'R' then 
          @command = CommandRight.new(@rover)
        when 'M' then
          @command = CommandForward.new(@rover)
        end
        @command.move
      end

      [@rover.target_x, @rover.target_y, @rover.face].join(' ')
    end

end