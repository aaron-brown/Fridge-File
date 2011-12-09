class FridgesController < ApplicationController
  before_filter :authenticate
  
  def new
    @title = "Create New Fridge"
  end
  
  def create
    @title = "Create Fridge"
    @fridge = current_user.fridges.build(params[:fridge])
    if @fridge.save
      flash[:success] = "Fridge created"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end
  
  def destroy
  end
  
  def show
    @user = current_user
    @fridge = Fridge.find(params[:id])
    @title = "#{@user.name}'s Fridges"
  end
end
