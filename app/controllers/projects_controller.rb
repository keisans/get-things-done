class ProjectsController < ApplicationController
	respond_to :html, :xml, :json
	before_filter :authenticate_user!, :only => :new

	def new
		@project = Project.new

		respond_with @project
	end

	def create
		@project = Project.new(params[:project])

		new_was_success = @project.save
		respond_with @project do |format|
			format.html{
				if new_was_success
					redirect_to(projects_path, :notice => "Yay, your project got created!")
				else
					render "new"
				end
			}
		end
	end

	def index
		@projects = Project.all

		respond_with @projects do |format|
			format.html { render :layout => !request.xhr? }
		end
	end

	def show
		@project = Project.find(params[:id])

		respond_with @project
	end
end
