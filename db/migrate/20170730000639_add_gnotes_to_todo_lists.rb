class AddGnotesToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :gnotes, :text
  end
end
