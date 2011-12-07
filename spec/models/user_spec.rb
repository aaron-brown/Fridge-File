require 'spec_helper'

describe User do
  before (:each) do
    @attr = {:name => "John Doe", :email => "jdoe@example.com"}
  end
  
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  describe "Associations" do
    before(:each) do
      @user = User.create(@attr)
    end
  
    it "should have a fridges attribute" do
      @user.should respond_to(:fridges)
    end
  end
end
     
