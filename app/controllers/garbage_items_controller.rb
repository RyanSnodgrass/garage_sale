class GarbageItemsController < ApplicationController
	def index
		@garbage_items = GarbageItem.all
	end
	def new
		@new_garbage_item = GarbageItem.new
	end
	def create
		@new_garbage_item = GarbageItem.new(garbage_item_params)
		@new_garbage_item.save
		redirect_to "/garbage_items"
	end


	def edit
		@garbage_item = GarbageItem.find(params[:id])
	end
	def update
		@garbage_item = GarbageItem.find(params[:id])
		@garbage_item.update_attributes(garbage_item_params)
		redirect_to "/garbage_items"
	end

	def Sold
		
		#redirect_to "/garbage_items"
	end
	def show
		@item= GarbageItem.find(params[:id])
	end

	def destroy
		@garbage_item = GarbageItem.find(params[:id])
		@garbage_item.delete
		redirect_to "/garbage_items"
	end

private

	def garbage_item_params
		params.require(:garbage_item).permit!
	end

end
