require_relative 'spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new
    @item = Item.new("item", 5)
  end

  describe "#heal!" do
    it "doesnt allow healing on a robot with 0 hp" do
    @robot.wound(100)
    expect {@robot.heal(20)}.to raise_error
     expect(@robot.health).to eq(0)
  end
end

  describe "#heal" do
    it "shouldnt allow heal on a dead robot" do
      @robot.wound(100)
      expect {@robot.heal(30)}.to raise_error
      expect(@robot.health).to eq(0)
    end
  end

  describe "#attack" do
    it "should not allow robots to attack non-robots" do 
      expect {@robot.attack(@item)}.to raise_error
    end
  end


end
