class AddMissionToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :mission, :string
  end
end
