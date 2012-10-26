class InboxItem < ActiveRecord::Base
  attr_accessible :description, :due_date, :project_id, :task_id, :title, :user_id, :creator_id

  belongs_to :project
  belongs_to :user
  belongs_to :task
  belongs_to :creator, :class_name => "User"

  validates :title, :presence => true
end
