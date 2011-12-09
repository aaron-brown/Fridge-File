class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @user = current_user
    end
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
