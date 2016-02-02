class TaskItemsController < ApplicationController

	before_action :find_task_list
	before_action :find_task_item, except: [:create]


	def create
		@task_item = @task_list.task_items.create(task_items_params)
		@task_item.user_id = current_user.id
		if @task_item.save
			redirect_to @task_list, notice: "Task item successfully added"
		else
			redirect_to root_path, notice: "Please check if you fill out all fields"
		end
	end

	def edit
	end

	def update
      if @task_item.update(task_items_params)
        redirect_to @task_list, notice: 'Task list was successfully updated.'
      else
        render :edit
      end
  end

	def destroy
		@task_item.destroy
		redirect_to @task_list
	end

	def complete
		 @task_item.toggle_completion!
		 redirect_to @task_list, notice: "Task item updated."
	end

	private

	def task_items_params
		params.require(:task_item).permit(:title, :description, :duedate)
	end

	def find_task_list
		@task_list = TaskList.find(params[:task_list_id])
	end

	def find_task_item
		@task_item = @task_list.task_items.find(params[:id])
	end
end
