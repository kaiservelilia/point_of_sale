class RemoveCategoryIdInItem < ActiveRecord::Migration
  def change
  	remove_column(:items, :item_category_id)
  end
end
