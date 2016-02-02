class AddCompletedAtToTaskItem < ActiveRecord::Migration
  def change
    add_column :task_items, :completed_at, :datetime
  end
end
