require 'spec_helper.rb'

describe 'RDPParser' do

  before :all do
    @draw_rectangle = 'lib/rectangle.rdp'
  end

  context ' When Parsing an RDP File ' do

    it 'Opens an *rdp File' do
      sut = RDPParser.open @draw_rectangle
      sut.current_file.class.should == File
    end

    before :each do
      @sut = RDPParser.open @draw_rectangle
    end

    it ' Splits the Lines into an Array of Commands (strings) ' do
      @sut.parse_lines_to_commands[0].should == 'P 2'
    end

    it ' Returns a Hash of Commands -> Directives from Array ' do
      array_of_commands = @sut.parse_lines_to_commands
      @sut.finalize_commands_list(array_of_commands)[4][:E].should == 2
      @sut.finalize_commands_list(array_of_commands)[2][:W].should == 2
    end
  end

  context ' A Full RDPParse..' do

    it ' Returns a Hash of Commands from an RDP file ' do
      @sut = RDPParser.open @draw_rectangle
      @sut.parse[4][:E].should == 2
      @sut.parse[2][:W].should == 2
    end

  end
end


describe 'RDPParser2' do

end
