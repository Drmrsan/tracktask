class TaskListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task_list, only: [:show, :edit, :update, :destroy]
  before_action :set_all_tasks, only: [:index, :show, :edit]
  
  def index
  end

  def show
  end

  def new
    @task_list = current_user.task_lists.build
  end

  def edit
  end

  def create
    @task_list = current_user.task_lists.create(task_list_params)
    @task_list.user_id = current_user.id
      if @task_list.save
        redirect_to @task_list, notice: 'Task list was successfully created.'
      else
        render :new
    end
  end

  def update
      if @task_list.update(task_list_params)
        redirect_to @task_list, notice: 'Task list was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @task_list.destroy
    redirect_to task_lists_url, notice: 'Task list was successfully destroyed.'
  end

  private
    def set_task_list
      @task_list = TaskList.find(params[:id])
    end
    def task_list_params
      params.require(:task_list).permit(:name)
    end
    def set_all_tasks
      @task_lists = TaskList.all
    end
end
