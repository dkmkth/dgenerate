class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.string :category_type
      t.string :subtype
      t.decimal :purchase_price
      t.integer :price

      t.timestamps null: false
    end
  end
end
