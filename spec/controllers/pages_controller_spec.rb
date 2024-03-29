require 'spec_helper'


describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home")
    end
    
    it "should have a sign-in form"
    
    it "should have a signup / register button"

  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Contact")
    end
    
    it "should have a contact form"
    
    it "should send an email"
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "About")
    end
  end
  
  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector("title", :content => "Help")
    end   
  end
  
  describe "GET 'fridge-display'" do
    it "returns http success" do
      get 'fridge_display'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'fridge_display'
      response.should have_selector("title", :content => "Fridge Display")
    end
  end
end
