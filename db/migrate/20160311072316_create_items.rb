class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_code
      t.string :item_name
      t.text :description
      t.float :cost_price
      t.float :selling_price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
