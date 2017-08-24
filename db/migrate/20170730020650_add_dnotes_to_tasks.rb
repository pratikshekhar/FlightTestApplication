class AddDnotesToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :dnotes, :string
  end
end
