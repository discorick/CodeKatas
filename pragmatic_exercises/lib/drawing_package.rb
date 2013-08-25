class RDPParser
  attr_accessor :current_file

  def initialize file_name
    @current_file = File.new(file_name, 'r')
    self
  end

  def parse
    command_array = self.parse_lines_to_commands
    finalize_commands_list command_array 
  end

  def self.open file_name
    @draw_package = RDPParser.new file_name
  end

  def parse_lines_to_commands
    raw_output = IO.readlines(@current_file)
    raw_output.collect! do |command|
      command.chomp
    end
  end

  def finalize_commands_list parsed_commands_array
    finalized_command_hash = {}
    parsed_commands_array.each_index do |index|
      command = parsed_commands_array[index][0].to_sym
      directive = parsed_commands_array[index][2..-1].to_i
      finalized_command_hash[index] = {command => directive}
    end
    finalized_command_hash
  end
end


class RDPParser2

end


