class AddDescriptionToTaskItem < ActiveRecord::Migration
  def change
    add_column :task_items, :description, :text
  end
end
