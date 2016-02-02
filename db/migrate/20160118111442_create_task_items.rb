class CreateTaskItems < ActiveRecord::Migration
  def change
    create_table :task_items do |t|
      t.string :title
      t.references :task_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
