module Management
	class ItemCategoriesController < ApplicationController

		def index
	 		@item_categories = ItemCategory.all
	 	end

	 	def new
			@item_category = ItemCategory.new 
		end

		def create
			@item_category = ItemCategory.new(item_category_params)
			if @item_category.save
				redirect_to management_item_categories_path
			else
				render "new"
			end
		end

		def show
			@item_category = ItemCategory.find(params[:id])
			@item_types = ItemType.where(item_category_id: @item_category.id)
		end

		def edit
			@item_category = ItemCategory.find(params[:id])
		end

		def update
			@item_category = ItemCategory.find(params[:id])
			if @item_category.update_attributes(item_category_params)
				redirect_to management_item_category_path(@item_category)
			else render "edit"
			end
		end

		def destroy
			@item_category = ItemCategory.find(params[:id])
			@item_category.destroy
			redirect_to management_item_categories_path
		end

		def item_category_params
			params.require(:item_category).permit!
		end
	end
end
