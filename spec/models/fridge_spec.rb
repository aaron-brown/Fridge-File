require 'spec_helper'

describe Fridge do
  before(:each) do
      @user = Factory(:user)
      @attr = { :name => "Fridge" }
    end
  
  it "should create a new instance given valid attributes" do
      @user.fridges.create!(@attr)
  end
  
  describe "Associations" do
    before(:each) do
      @fridge = @user.fridges.create(@attr)
    end
    
    it "should have a user attribute" do
      @fridge.should respond_to(:user)
    end
    
    it "should have the right associated user" do
      @fridge.user_id.should == @user.id
      @fridge.user.should == @user
    end
  end
end