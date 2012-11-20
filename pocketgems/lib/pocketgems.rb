
class BuildingBlocks
  attr_accessor :blocks
  @@blocks = {:B1x1x1 => "1x1x1", :B1x2x1 => "1x2x1", :B2x1x1 => "2x1x1"}

  def self.pick_block(building_block)
    @@blocks[building_block]
  end
end


class PocketGems
  def initialize
    @wall = [1,0,0]
    @test_cases = {}
  end

  def self.build_new_wall
    PocketGems.new
  end

  def wall_dimensions
    this_walls_dimensions = @wall
  end

  def input_test_cases(number)
    for testcase in 1..number
      @test_cases[testcase] = []
    end
    @test_cases
  end


end

class  MakeTetrisBlocks

end

# iterate over this block:
#   build wall do
#     verfiy row 1
#     verify row 2
#
