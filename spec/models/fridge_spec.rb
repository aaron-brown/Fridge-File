require 'spec_helper'

describe Fridge do
  before(:each) do
    @attr = {
      :name => "fridge",
      :user_id => 1
    }
  end
  
  it "should create a new instance given valid attributes" do
    @user.fridges.create!(@attr)
  end
  
  describe "Associations" do
    before(:each) do
      @frdige = @user.fridges.create(@name)
    end
    
    it "should have a user attribute" do
      @fridge.should respond_to(:user)
    end
    
    it "should have the right associated user" do
      @fridge.user_id.shoul_be == @user.id
      @fridge.user == @user
    end
  end
end
