class RemoveDesignationFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :designation, :string
  end
end
