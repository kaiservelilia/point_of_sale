module Management
	class ItemTypesController < ApplicationController

		def index
			@item_types = ItemType.all
	 	end

	 	def new
	 		@item_type = ItemType.new
		end

		def create
			@item_type = ItemType.new(item_type_params)
			if @item_type.save
				redirect_to management_item_types_path
			else
				render "new"
			end
		end

		def show
			@item_type = ItemType.find(params[:id])
		end

		def edit
			@item_type = ItemType.find(params[:id])
		end

		def update
			@item_type = ItemType.find(params[:id])
			if @item_type.update_attributes(item_type_params)
				redirect_to management_item_type_path(@item_type)
			else render "edit"
			end
		end

		def destroy
			@item_type = ItemType.find(params[:id])
			@item_type.destroy
			redirect_to management_item_types_path
		end

		def item_type_params
			params.require(:item_type).permit!
		end
	end
end
