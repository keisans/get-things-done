class InboxItemsController < ApplicationController
	respond_to :html, :xml, :json

	def index
		@items = InboxItem.all
	end

	def new
		@inbox_item = InboxItem.new
	end

	def create
		@item = InboxItem.new(params[:inbox_item])

		new_was_success = @item.save
		respond_with @item do |format|
			format.html{
				if new_was_success
					redirect_to(inbox_items_path, :notice => "Yay, your inbox item got created!")
				else
					render "new"
				end
			}
		end
	end

	def show
		@item = InboxItem.find(params[:id])
	end
end
