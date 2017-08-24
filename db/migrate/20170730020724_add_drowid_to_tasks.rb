class AddDrowidToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :drowid, :string
  end
end
