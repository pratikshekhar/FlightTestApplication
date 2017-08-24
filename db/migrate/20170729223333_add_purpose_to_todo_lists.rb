class AddPurposeToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :purpose, :string
  end
end
