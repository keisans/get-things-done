class CreateInboxItems < ActiveRecord::Migration
  def change
    create_table :inbox_items do |t|
      t.string :title, :null => false
      t.datetime :due_date
      t.integer :project_id
      t.integer :user_id
      t.integer :task_id
      t.text :description

      t.timestamps
    end
  end
end
