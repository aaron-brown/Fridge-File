module FridgesHelper
  def current_fridge=(fridge)
    @current_fridge = fridge
  end
  
  def current_user
    @current_fridge ||= fridge_from_remember_fridge_token
  end
  
  private
    def fridge_from_remember_fridge_token
      fridgeId = remember_fridge_token
      Fridge.find_by_id(fridgeId)
    end
  
    def remember_fridge_token
      cookies[:remember_fridge_token] || nil
    end
end
