class AddCreatorIdToInboxItem < ActiveRecord::Migration
  def change
    add_column :inbox_items, :creator_id, :integer
  end
end
