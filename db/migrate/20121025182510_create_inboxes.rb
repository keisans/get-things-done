class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.string :title, :null => false

      t.timestamps
    end
  end
end
