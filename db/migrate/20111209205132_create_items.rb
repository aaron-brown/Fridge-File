class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.date :expiration_date

      t.timestamps
    end
  end
end
