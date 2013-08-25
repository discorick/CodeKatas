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

    it "\n - Inputs a Number of Test Cases" do
      @gems_session.input_test_cases(3).should == {1 => [], 2 => [], 3 =>[]}
    end

    it "\n - Inputs 3 Values per test Case.. 2**Depth, Height, 1(width)" do
      @gems_session.input_test_cases(3) do
        [1,1,1]
        [2,1,1]
        [2,2,1]
      end.should == {1 => [1,1,1], 2 => [2,1,1], 3 =>[2,2,1]}

    end
  end
end
