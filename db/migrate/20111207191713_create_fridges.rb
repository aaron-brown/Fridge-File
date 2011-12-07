class CreateFridges < ActiveRecord::Migration
  def self.up
    create_table :fridges do |t|
      t.string :name
      t.integer :user_id
      
      t.timestamps
    end
    add_index :fridges, :user_id
  end
  
    def self.change
    create_table :fridges do |t|
      t.string :name
      t.integer :user_id
      
      t.timestamps
    end
    add_index :fridges, :user_id
  end
  
  def self.down
    drop_table :fridges
  end
end
