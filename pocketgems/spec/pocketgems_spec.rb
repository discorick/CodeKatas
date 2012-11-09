require 'spec_helper.rb'
require_relative '../lib/pocketgems.rb'

describe "When Building a Wall with Blocks" do
  context "\n Given 3 blocks of sizes 1x1x1, 1x2x1, 2x1x1" do

    it "\n - Pick a building Block" do
      block = BuildingBlocks.pick_block(:B1x1x1)
      block.should == "1x1x1"
    end

    it " \n - Starts a new Pocket Gems Session" do
      new_session = PocketGems.build_new_wall()
    end

    before (:each) do
      @gems_session = PocketGems.build_new_wall
    end
    
    it "\n - A new wall has a Height of 0, width of 0, and Depth of 1 " do
      @gems_session.wall_dimensions.should == [0,0,1]
    end

  end
end
