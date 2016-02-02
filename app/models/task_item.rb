class TaskItem < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user

  validates :title , :description, :duedate,  presence: true


  scope :complete, -> { where("completed_at is not null") }
  scope :incomplete, -> { where(completed_at: nil) }

  def completed?
    !completed_at.blank?
  end

  def toggle_completion!
  	if completed?
  		update_attribute(:completed_at, nil)
  	else
  		update_attribute(:completed_at, Time.now)
  	end
  end

end
