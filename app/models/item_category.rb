class ItemCategory < ActiveRecord::Base
	has_many :item_types
	has_many :items
end
