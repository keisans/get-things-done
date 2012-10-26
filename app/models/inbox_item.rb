class InboxItem < ActiveRecord::Base
  attr_accessible :description, :due_date, :project_id, :task_id, :title, :user_id
end
