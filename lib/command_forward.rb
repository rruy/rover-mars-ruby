require './lib/command_base'

class CommandForward < CommandBase

  def initialize(rover)
    super(rover)
  end

  def move
    case @face
    when 'N' 
      @target_y += 1
    when 'S' 
      @target_y -= 1
    when 'E' 
      @target_x += 1
    when 'W' 
      @target_x -= 1
    end
    
    update_values

    raise OutOfBound, 'Rover out in space' if limit?

    [@target_y, @target_x]
  end

end