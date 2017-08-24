class AddDateToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :date, :date
  end
end
