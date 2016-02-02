class StaticPagesController < ApplicationController
  before_action :set_all_tasks


  def index

  end
  private

  def set_all_tasks
      @task_lists = TaskList.all
      @task_list = TaskList.new
  end
end
