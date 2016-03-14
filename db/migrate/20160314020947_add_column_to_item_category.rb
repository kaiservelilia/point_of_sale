class AddColumnToItemCategory < ActiveRecord::Migration
  	add_column(:item_types, :item_category_id, :integer)
end
