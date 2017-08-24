class AddDstatusToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :dstatus, :string
  end
end
