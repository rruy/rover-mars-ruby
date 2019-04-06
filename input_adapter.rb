require './lib/command_input'

class InputAdapter

  def initialize (filename)
   @initial_position = ""
   @plateau_position = "" 

   @filename = filename
   @items_command = []
   open_file
  end
      
  def open_file
    puts "Nome do arquivo #{@filename}"
    raise IOError.new('Error to open file') if !File.file? ("./" + @filename)
    @input_lines = File.new(@filename, "r").readlines
  end

  def translate
    command_params = CommandInput.new(@input_lines.delete_at(0))
    @input_lines.each_slice(2) do |targets, directions|
      next if targets.nil? || directions.nil?
      target = targets.split(' ')
      directions = sanitaze(directions)
      command_params.add_direction({ target: target, directions: directions })
   end
   command_params
  end

  def sanitaze(input)
    input.tr("\n","")
  end
      
end