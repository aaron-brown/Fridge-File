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
  
  def index
    @fridges = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fridges }
    end
  end


  
  def show
    @user = current_user
    @fridge = Fridge.find(params[:fridge][:id])
    @title = "#{@user.name}'s Fridges"
    
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @fridges }
      end
  end
end
