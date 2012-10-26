class Task < ActiveRecord::Base
  attr_accessible :due_date, :parent_id, :project_id, :title, :user_id

  belongs_to :project
  belongs_to :user
  belongs_to :parent, class_name: "Task", foreign_key: "parent_id"
  has_many :children, class_name: "Task", foreign_key: "parent_id"

  validates :title, :presence => true
  validates :due_date, :presence => true
  validates :project_id, :presence => true
  validates :user_id, :presence => true

  scope :completed, where(:complete => true)

  scope :incomplete, where(:complete => false)

  def before_validation
    date = Chronic.parse(due_date)
    self.due_date = date.to_s(:db)
  end

  private

end
