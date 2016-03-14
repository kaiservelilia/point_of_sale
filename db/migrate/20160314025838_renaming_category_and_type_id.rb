class RenamingCategoryAndTypeId < ActiveRecord::Migration
  def change
  	rename_column :items, :category_id, :item_category_id
  	rename_column :items, :type_id, :item_type_id
  end
end
