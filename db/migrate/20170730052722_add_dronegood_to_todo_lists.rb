class AddDronegoodToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :dronegood, :integer
  end
end
