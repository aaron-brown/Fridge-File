class Item < ActiveRecord::Base
  attr_accessible :name, :quantity, :expiration_date
  
  belongs_to :fridge
end
