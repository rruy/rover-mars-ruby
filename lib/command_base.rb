class CommandBase

  DIRECTIONS = %w(N E S W).freeze
 
  attr_reader :rover, :target_x, :target_y, :face, :rover_inital_x, :rover_inital_y

  def initialize(rover)
    @rover = rover
    @rover_inital_x = @rover.initial_coord_x
    @rover_inital_y = @rover.initial_coord_y
    @target_x = @rover.target_x.to_i 
    @target_y = @rover.target_y.to_i
    @face = @rover.face
  end

  def move
    raise NotImplementedError, 'Ask the subclass'
  end

  protected

  def face_to(operator, step)
    idx = DIRECTIONS.index(@face).method(operator).call(step) % 4
    @face = DIRECTIONS[idx]
  end

  def update_values
    @rover.update_position(@target_x, @target_y, @face)
  end

  def limit?
    @target_x > @rover_inital_x || @target_y > @rover_inital_y
  end

  class OutOfBound < StandardError
  end
end