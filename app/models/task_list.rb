class TaskList < ActiveRecord::Base
	has_many :task_items, dependent: :destroy
	belongs_to :user
end
