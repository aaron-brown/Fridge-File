class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end
  
  def fridge_display
    @user = current_user
    @title = "#{@user.name}'s Fridges"
  end

end
