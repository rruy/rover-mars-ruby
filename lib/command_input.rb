class CommandInput

  attr_reader :initial_coords
  attr_accessor :directions

  def initialize(initial_coords)
    @initial_coords = initial_coords.split(' ')
    @directions = []
  end

  def add_direction(item)
    @directions << item
  end

end