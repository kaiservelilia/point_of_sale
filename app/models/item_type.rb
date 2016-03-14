class ItemType < ActiveRecord::Base
	belongs_to :item_category
	has_many :items
end
