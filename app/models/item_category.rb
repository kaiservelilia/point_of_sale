class ItemCategory < ActiveRecord::Base
	has_many :item_types
end
