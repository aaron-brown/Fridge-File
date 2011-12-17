class ItemsController < ApplicationController
  def create
    @item = $current_fridge.items.build(params[:item])
    if @item.save
      flash[:success] = "Item placed into #{$current_fridge.name}."
      redirect_to current_user
    else
      render 'pages/home'
    end
  end
  
  def increment
    @item = Item.find(params[:id])
    @item.quantity += 1
    
    @item.save
    
    respond_to do |format|
      format.html { redirect_to fridges_path($current_fridge.id) }
      format.json { head :ok }
    end
  end
  
  def decrement
    @item = Item.find(params[:id])
    
    if(@item.quantity == 1)
      @item.destroy
    else
      @item.quantity -= 1
      @item.save
    end
  
    respond_to do |format|
      format.html { redirect_to fridges_path($current_fridge.id) }
      format.json { head :ok }
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    
    respond_to do |format|
      format.html { redirect_to current_user }
      format.json { head :ok }
    end
  end
end
