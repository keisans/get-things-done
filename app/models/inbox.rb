class Inbox < ActiveRecord::Base
  attr_accessible :title

  has_many :users
  has_many :inbox_items

  validates :title, :presence => true
end
