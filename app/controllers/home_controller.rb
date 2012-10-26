class HomeController < ApplicationController

	def index
		@users = User.all
		@tasks = Task.all
	end

	def show
		@user = current_user
	end
end
