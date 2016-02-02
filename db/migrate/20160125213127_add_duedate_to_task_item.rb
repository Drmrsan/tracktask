class AddDuedateToTaskItem < ActiveRecord::Migration
  def change
    add_column :task_items, :duedate, :datetime
  end
end
