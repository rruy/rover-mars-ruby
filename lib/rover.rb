require './lib/command_factory'

class Rover

  attr_reader :initial_coord_x, :initial_coord_y
  attr_accessor :target_x, :target_y, :face

  def initialize(initial_coord_x, initial_coord_y)
    @initial_coord_x = initial_coord_x.to_i
    @initial_coord_y = initial_coord_y.to_i
  end

  def move(input)
    self.set_target(*input[:target])
    CommandFactory.new(self).handler(input[:directions]) + "\n"
  end

  def set_target(target_x, target_y, face)
    update_position(target_x, target_y, face)
  end
  
  def update_position(target_x, target_y, face)
    @target_x = target_x.to_i
    @target_y = target_y.to_i
    @face = face
  end

end