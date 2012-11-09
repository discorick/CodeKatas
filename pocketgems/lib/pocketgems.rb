
class BuildingBlocks
  attr_accessor :blocks
  @@blocks = {:B1x1x1 => "1x1x1", :B1x2x1 => "1x2x1", :B2x1x1 => "2x1x1"}

  def self.pick_block(building_block)
    @@blocks[building_block]
  end
end


class PocketGems
  attr_accessor :depth, :width, :height
  def initialize
    @depth, @width, @height = 1,0,0
  end

  def self.build_new_wall
    PocketGems.new
  end

  def wall_dimensions
    this_walls_dimensions = [@height, @width, @depth]
  end

end

class  MakeTetrisBlocks

end

# iterate over this block:
#   build wall do
#     verfiy row 1
#     verify row 2
#
