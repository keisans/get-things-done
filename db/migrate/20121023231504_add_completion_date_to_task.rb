class AddCompletionDateToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :completion_date, :datetime
  end
end
