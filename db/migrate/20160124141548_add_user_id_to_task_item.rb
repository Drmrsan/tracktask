class AddUserIdToTaskItem < ActiveRecord::Migration
  def change
    add_column :task_items, :user_id, :integer
  end
end
