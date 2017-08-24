class AddDronetotalToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :dronetotal, :integer
  end
end
