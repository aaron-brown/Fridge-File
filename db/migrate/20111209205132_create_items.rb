class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.date :expiration_date
      t.integer :fridge_id

      t.timestamps
    end
    
    add_index :items, :fridge_id
  end
end
