class AddTimeToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :time, :string
  end
end
