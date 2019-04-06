require './lib/command_base'

class CommandRight < CommandBase

  def initialize(rover)
    super(rover)
  end

  def move(step = 1)
    face_to('+', step)
    update_values
  end

end