class CommandInput

  attr_reader :inital_coords
  attr_accessor :directions

  def initialize(inital_coords)
    @inital_coords = inital_coords.split(' ')
    @directions = []
  end

  def add_direction(item)
    @directions << item
  end

end