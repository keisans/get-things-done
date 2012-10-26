class InboxItemsController < ApplicationController

	def index
		@items = InboxItem.all
	end

	def new
		@inbox_item = InboxItem.new
	end
end
