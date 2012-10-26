class TasksController < ApplicationController
	respond_to :html, :xml, :json
	before_filter :authenticate_user!, :only => :new

	def new
		@task = Task.new

		respond_with @task
	end

	def create
		@task = Task.new(params[:task])

		new_was_success = @task.save
		respond_with @task do |format|
			format.html{
				if new_was_success
					redirect_to(tasks_path, :notice => "Yay, your task got created!")
				else
					render "new"
				end
			}
		end
	end

	def edit
		@task = Task.find(params[:id])

		respond_with @task
	end

	def update
		@task = Task.find(params[:id])

		new_was_success = @task.update_attributes(params[:task])
		respond_with @task do |format|
			format.html{
				if new_was_success
					redirect_to(tasks_path, :notice => "Yay, your task got updated!")
				else
					render "edit"
				end
			}
		end
	end

	def index
		@complete = Task.completed
		@incomplete = Task.incomplete
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def complete
	    @task = Task.find(params[:id])
	    @task.complete = true
	    @task.completion_date = Time.now
	    @task.save
	    redirect_to root_path
  	end
end
