class AddDesignationToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :designation, :string
  end
end
