class ApplicationController < ActionController::Base
  before_action :set_all_tasks
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @task_list.user_id = current_user.id
  end
  private

  def set_all_tasks
      @task_lists = TaskList.all
  end

end
